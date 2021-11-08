using System.Collections.Generic;
using System.Linq;
using ReactiveUI;
using IESSRTools.Core.DotNetFramework.Utils;
using System.Windows;
using System.Data;

namespace IESSRTools.AddIn.Excel.Pane
{
    public class MatchViewModel : ReactiveObject
    {
        // Config - Selected
        private int? _OriCol = 1;
        private int? _InsertCol = 2;
        private string _QueryFile = null;
        private string _QuerySheet = "详情";
        private string _QueryCol = "详情";
        private string _LabelCol = "名称";
        private string _ValueCol = "代码";
        private string _DetailsCol = "详情";
        private string _LevelCol = "级别";

        // Config - Source
        private List<int> _OriCols = null;
        private List<int> _InsertCols = null;
        private List<string> _QuerySheets = null;
        private List<string> _QueryCols = null;
        private List<string> _ValueCols = null;
        private List<string> _LabelCols = null;
        private List<string> _DetailsCols = null;
        private List<string> _LevelCols = null;

        //Insert
        private string _OriValue = null;
        private string _ToLabel = null;
        private string _ToValue = null;
        private string _QueryKey = null;
        private int? _CurrentPosition = 2;
        private List<QueryResult> _QueryResults = null;
        private List<TreeNode> _TreeNodes = null;

        //Visible
        private bool? _ConfigDone = false;
        private bool? _ShowInsertTab = false;
        private bool? _QueryMode = true;

        // Config - Selected
        public int? OriCol
        {
            get => _OriCol;
            set => this.RaiseAndSetIfChanged(ref _OriCol, value);
        }
        public int? InsertCol
        {
            get => _InsertCol;
            set => this.RaiseAndSetIfChanged(ref _InsertCol, value);
        }
        public string QueryFile
        {
            get => _QueryFile;
            set => this.RaiseAndSetIfChanged(ref _QueryFile, value);
        }
        public string QuerySheet
        {
            get => _QuerySheet;
            set => this.RaiseAndSetIfChanged(ref _QuerySheet, value);
        }
        public string QueryCol
        {
            get => _QueryCol;
            set => this.RaiseAndSetIfChanged(ref _QueryCol, value);
        }
        public string ValueCol
        {
            get => _ValueCol;
            set => this.RaiseAndSetIfChanged(ref _ValueCol, value);
        }
        public string LabelCol
        {
            get => _LabelCol;
            set => this.RaiseAndSetIfChanged(ref _LabelCol, value);
        }
        public string DetailsCol
        {
            get => _DetailsCol;
            set => this.RaiseAndSetIfChanged(ref _DetailsCol, value);
        }
        public string LevelCol
        {
            get => _LevelCol;
            set => this.RaiseAndSetIfChanged(ref _LevelCol, value);
        }

        // Config - Source
        public List<int> OriCols
        {
            get => _OriCols;
            set => this.RaiseAndSetIfChanged(ref _OriCols, value);
        }
        public List<int> InsertCols
        {
            get => _InsertCols;
            set => this.RaiseAndSetIfChanged(ref _InsertCols, value);
        }
        public List<string> QuerySheets
        {
            get => _QuerySheets;
            set => this.RaiseAndSetIfChanged(ref _QuerySheets, value);
        }
        public List<string> QueryCols
        {
            get => _QueryCols;
            set => this.RaiseAndSetIfChanged(ref _QueryCols, value);
        }
        public List<string> ValueCols
        {
            get => _ValueCols;
            set => this.RaiseAndSetIfChanged(ref _ValueCols, value);
        }
        public List<string> LabelCols
        {
            get => _LabelCols;
            set => this.RaiseAndSetIfChanged(ref _LabelCols, value);
        }
        public List<string> DetailsCols
        {
            get => _DetailsCols;
            set => this.RaiseAndSetIfChanged(ref _DetailsCols, value);
        }
        public List<string> LevelCols
        {
            get => _LevelCols;
            set => this.RaiseAndSetIfChanged(ref _LevelCols, value);
        }

        //Insert
        public string OriValue
        {
            get => _OriValue;
            set => this.RaiseAndSetIfChanged(ref _OriValue, value);
        }
        public string ToLabel
        {
            get => _ToLabel;
            set => this.RaiseAndSetIfChanged(ref _ToLabel, value);
        }
        public string ToValue
        {
            get => _ToValue;
            set => this.RaiseAndSetIfChanged(ref _ToValue, value);
        }
        public string QueryKey
        {
            get => _QueryKey;
            set => this.RaiseAndSetIfChanged(ref _QueryKey, value);
        }
        public int? CurrentPosition
        {
            get => _CurrentPosition;
            set
            {
                this.RaiseAndSetIfChanged(ref _CurrentPosition, value);
                this.RaisePropertyChanged("CurrentPositionS");
            }
        }
        public string CurrentPositionS
        {
            get => CurrentPosition.ToString();
            set => CurrentPosition = System.Convert.ToInt32(value);
        }
        public List<QueryResult> QueryResults
        {
            get => _QueryResults;
            set => this.RaiseAndSetIfChanged(ref _QueryResults, value);
        }
        public List<TreeNode> TreeNodes
        {
            get => _TreeNodes;
            set => this.RaiseAndSetIfChanged(ref _TreeNodes, value);
        }

        public bool? ConfigDone
        {
            get => _ConfigDone;
            set => this.RaiseAndSetIfChanged(ref _ConfigDone, value);
        }

        public bool? ShowInsertTab
        {
            get => _ShowInsertTab;
            set => this.RaiseAndSetIfChanged(ref _ShowInsertTab, value);
        }

        public bool? QueryMode
        {
            get => _QueryMode;
            set
            {
                this.RaiseAndSetIfChanged(ref _QueryMode, value);
                this.RaisePropertyChanged("ShowQuery");
                this.RaisePropertyChanged("ShowView");
            }
        }

        public Visibility ShowQuery => (bool)_QueryMode ? Visibility.Visible : Visibility.Collapsed;

        public Visibility ShowView => (bool)_QueryMode ? Visibility.Collapsed : Visibility.Visible;

        public void SortQueryResults() => QueryResults = QueryResults.OrderByDescending(q => q.Similarity).ThenByDescending(q => q.WordSimilarity).ThenBy(q => q.Value).ToList();

        public void CalculateSimilarity() => QueryResults.ForEach(e =>
        {
            e.Similarity = e.Detail.SimilarityWith(QueryKey);
            e.WordSimilarity = e.Detail.SimilarityWithByWord(QueryKey);
        });

        public void FillTree(DataTable dt)
        {
            _TreeNodes = new List<TreeNode>();
            var queue = new Queue<TreeNode>();

            foreach (DataRow dr in dt.Rows)
            {
                queue.Enqueue(new TreeNode()
                {
                    Value = dr[ValueCol].ToString(),
                    Label = dr[LabelCol].ToString(),
                    Detail = dr[DetailsCol].ToString(),
                    Level = System.Convert.ToInt32(dr[LevelCol])
                });
            }

            int minLevel = System.Convert.ToInt32(dt.Compute("min(" + LevelCol + ")", ""));

            TreeNode currentNode;
            TreeNode lastNode = null;

            while (queue.Count != 0)
            {
                currentNode = queue.Dequeue();
                if (currentNode.Level == minLevel)
                {
                    _TreeNodes.Add(currentNode);
                }
                else if (lastNode == null)
                {
                    int times = currentNode.Level - minLevel - 2;
                    TreeNode virtualNode = new TreeNode()
                    {
                        Value = "",
                        Label = "虚拟节点",
                        Detail = "用于补足树结构的虚拟节点"
                    };
                    _TreeNodes.Add(virtualNode);
                    for (int i = 0; i < times; i++)
                    {
                        virtualNode.ChildNodes.Add(new TreeNode()
                        {
                            Value = "",
                            Label = "虚拟节点",
                            Detail = "用于补足树结构的虚拟节点",
                            Parent = virtualNode
                        });
                    }
                    virtualNode.ChildNodes.Add(currentNode);
                    currentNode.Parent = virtualNode;
                }
                else if (currentNode.Level == lastNode.Level)
                {
                    lastNode.Parent.ChildNodes.Add(currentNode);
                    currentNode.Parent = lastNode.Parent;
                }
                else if (currentNode.Level > lastNode.Level)
                {
                    if (currentNode.Level == lastNode.Level + 1)
                    {
                        lastNode.ChildNodes.Add(currentNode);
                        currentNode.Parent = lastNode;
                    }
                    else
                    {
                        int times = currentNode.Level - minLevel - 2;
                        TreeNode virtualNode = new TreeNode()
                        {
                            Value = "",
                            Label = "虚拟节点",
                            Detail = "用于补足树结构的虚拟节点"
                        };
                        lastNode.ChildNodes.Add(virtualNode);
                        for (int i = 0; i < times; i++)
                        {
                            virtualNode.ChildNodes.Add(new TreeNode()
                            {
                                Value = "",
                                Label = "虚拟节点",
                                Detail = "用于补足树结构的虚拟节点",
                                Parent = virtualNode
                            });
                        }
                        virtualNode.ChildNodes.Add(currentNode);
                        currentNode.Parent = virtualNode;
                    }
                }
                else if (currentNode.Level < lastNode.Level)
                {
                    int times = lastNode.Level - currentNode.Level;
                    TreeNode parentNode = lastNode.Parent;
                    for (int i = 0; i < times; i++)
                    {
                        parentNode = parentNode.Parent;
                    }
                    parentNode.ChildNodes.Add(currentNode);
                    currentNode.Parent = parentNode;
                }
                lastNode = currentNode;
            }

            this.RaisePropertyChanged("TreeNodes");
        }

    }


    public class QueryResult : ReactiveObject
    {
        private string _Value;
        private string _Label;
        private string _Detail;
        private double _Similarity;
        private double _WordSimilarity;

        public string Value
        {
            get => _Value;
            set => this.RaiseAndSetIfChanged(ref _Value, value);
        }
        public string Label
        {
            get => _Label;
            set => this.RaiseAndSetIfChanged(ref _Label, value);
        }
        public string ShowLabel => _Value + " | " + _Label;

        public string Detail
        {
            get => _Detail;
            set => this.RaiseAndSetIfChanged(ref _Detail, value);
        }

        public string DetailWithSimilarity => _Detail + "\n" + "相似度：" + _Similarity.ToString("P2") + "，字符相似度" + _WordSimilarity.ToString("P2");

        public double Similarity
        {
            get => _Similarity;
            set => this.RaiseAndSetIfChanged(ref _Similarity, value);
        }
        public double WordSimilarity
        {
            get => _WordSimilarity;
            set => this.RaiseAndSetIfChanged(ref _WordSimilarity, value);
        }
    }

    public class TreeNode : ReactiveObject
    {
        private string _Value;
        private string _Label;
        private string _Detail;

        public string Value
        {
            get => _Value;
            set => this.RaiseAndSetIfChanged(ref _Value, value);
        }
        public string Label
        {
            get => _Label;
            set => this.RaiseAndSetIfChanged(ref _Label, value);
        }
        public string ShowLabel => _Value + " | " + _Label;

        public string Detail
        {
            get => _Detail;
            set => this.RaiseAndSetIfChanged(ref _Detail, value);
        }

        public int Level { get; set; }
        public List<TreeNode> ChildNodes { get; set; }
        public TreeNode Parent { get; set; }

        public TreeNode()
        {
            ChildNodes = new List<TreeNode>();
            Parent = null;
        }
    }

}
