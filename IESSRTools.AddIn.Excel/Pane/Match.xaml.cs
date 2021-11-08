using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using System.Linq;
using System.Data;
using IESSRTools.Core.DotNetFramework.Utils;
using MsExcel = Microsoft.Office.Interop.Excel;

namespace IESSRTools.AddIn.Excel.Pane
{
    /// <summary>
    /// Match.xaml 的交互逻辑
    /// </summary>
    public partial class Match : UserControl
    {
        private readonly MatchViewModel dc = null;
        private readonly MsExcel.Application xlApp = null;
        private DataTable QueryTable;

        public Match()
        {
            InitializeComponent();
            DataContext = new MatchViewModel();
            dc = (MatchViewModel)DataContext;
            xlApp = Globals.ThisAddIn.Application;
        }

        private void SelectQueryResult(object sender, RoutedEventArgs e)
        {
            var qr = (QueryResult)((ListBoxItem)sender).Content;
            dc.ToValue = qr.Value;
            dc.ToLabel = qr.Label;
        }

        private void SelectTreeNode(object sender, RoutedEventArgs e)
        {
            var tn = (TreeNode)((TreeViewItem)sender).DataContext;
            dc.ToValue = tn.Value;
            dc.ToLabel = tn.Label;
            e.Handled = true;
        }

        private void SelectFile(object sender, RoutedEventArgs e)
        {
            var ofd = new System.Windows.Forms.OpenFileDialog()
            {
                Filter = "Excel 2007 工作簿 (*.xlsx)|*.xlsx"
            };
            if (ofd.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                dc.QueryFile = ofd.FileName;
                dc.QuerySheets = Core.DotNetFramework.Utils.IO.Excel.GetSheetNames(dc.QueryFile);
            }
        }

        private void SheetChanged(object sender, SelectionChangedEventArgs e)
        {
            dc.QueryCols = dc.ValueCols = dc.LabelCols = dc.DetailsCols = dc.LevelCols = null;
            if (System.IO.File.Exists(dc.QueryFile) && dc.QuerySheet != null)
            {
                QueryTable = Core.DotNetFramework.Utils.IO.Excel.ReadWorkbookAsDataSet(dc.QueryFile).Tables[dc.QuerySheet];
                dc.QueryCols = dc.ValueCols = dc.LabelCols = dc.DetailsCols = dc.LevelCols = Data.GetColumnNames(QueryTable);
            }
        }

        private void ListUsedColumns(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            MsExcel.Range UsedRange = (xlApp.ActiveSheet as MsExcel.Worksheet).UsedRange;
            dc.InsertCols = dc.OriCols = Enumerable.Range(1, UsedRange.Columns.Count).ToList();
        }

        private void LastObservation(object sender, RoutedEventArgs e)
        {
            UpCursor(sender, e);
            QueryThis();
        }

        private void NextObservation(object sender, RoutedEventArgs e)
        {
            DownCursor(sender, e);
            QueryThis();
        }

        private void ThisObservation(object sender, RoutedEventArgs e)
        {
            MsExcel.Range UsedRange = (xlApp.ActiveSheet as MsExcel.Worksheet).UsedRange;
            if (dc.CurrentPosition > UsedRange.Rows.Count || dc.CurrentPosition < 2)
            {
                MessageBox.Show("超出范围了！");
                return;
            }
            dc.CurrentPosition = xlApp.ActiveCell.Row;
            dc.ToLabel = dc.ToValue = dc.QueryKey = dc.OriValue = null;
            ((MsExcel.Range)UsedRange.Cells[dc.CurrentPosition, dc.InsertCol]).Activate();
            QueryThis();
        }

        private void QueryThis()
        {
            MsExcel.Range UsedRange = (xlApp.ActiveSheet as MsExcel.Worksheet).UsedRange;
            dc.QueryKey = dc.OriValue = ((MsExcel.Range)UsedRange.Cells[dc.CurrentPosition, dc.OriCol]).Value2.ToString();
            Query();
        }

        private void SubmitConfig(object sender, RoutedEventArgs e)
        {
            dc.ConfigDone = dc.OriCol != null && dc.InsertCol != null && dc.QueryCol != null && dc.LabelCol != null && dc.ValueCol != null && dc.DetailsCol != null && dc.LevelCol != null;
            if ((bool)dc.ConfigDone)
            {
                dc.QueryResults = new List<QueryResult>();
                foreach (DataRow dr in QueryTable.Rows)
                {
                    dc.QueryResults.Add(new QueryResult()
                    {
                        Value = dr[dc.ValueCol].ToString(),
                        Label = dr[dc.LabelCol].ToString(),
                        Detail = dr[dc.DetailsCol].ToString()
                    });
                }
                dc.FillTree(QueryTable);
                MessageBox.Show("成功设置");
                dc.ShowInsertTab = true;
                QueryThis();
            }
        }

        private void Query()
        {
            dc.CalculateSimilarity();
            dc.SortQueryResults();
        }

        private void SubmitValue(object sender, RoutedEventArgs e)
        {
            MsExcel.Range UsedRange = (xlApp.ActiveSheet as MsExcel.Worksheet).UsedRange;
            ((MsExcel.Range)UsedRange.Cells[dc.CurrentPosition, dc.InsertCol]).Value2 = dc.ToValue;
        }

        private void SubmitAndNext(object sender, RoutedEventArgs e)
        {
            SubmitValue(sender, e);
            NextObservation(sender, e);
        }

        private void Query(object sender, RoutedEventArgs e) => Query();

        private void UpCursor(object sender, RoutedEventArgs e)
        {
            MsExcel.Range UsedRange = (xlApp.ActiveSheet as MsExcel.Worksheet).UsedRange;
            if (dc.CurrentPosition == 2)
            {
                MessageBox.Show("已经是第一个");
                return;
            }
            dc.CurrentPosition--;
            dc.ToLabel = dc.ToValue = dc.QueryKey = dc.OriValue = null;
            ((MsExcel.Range)UsedRange.Cells[dc.CurrentPosition, dc.InsertCol]).Activate();
        }

        private void DownCursor(object sender, RoutedEventArgs e)
        {
            MsExcel.Range UsedRange = (xlApp.ActiveSheet as MsExcel.Worksheet).UsedRange;
            if (dc.CurrentPosition == UsedRange.Rows.Count)
            {
                MessageBox.Show("已经是最后一个");
                return;
            }
            dc.CurrentPosition++;
            dc.ToLabel = dc.ToValue = dc.QueryKey = dc.OriValue = null;
            ((MsExcel.Range)UsedRange.Cells[dc.CurrentPosition, dc.InsertCol]).Activate();
        }

        private void SelectNode(object sender, System.Windows.Input.MouseButtonEventArgs e)
        {
            if (e.ClickCount >= 2)
            {
                var tn = (TreeNode)((TextBlock)sender).DataContext;
                dc.ToValue = tn.Value;
                dc.ToLabel = tn.Label;
                e.Handled = true;
            }
        }
    }

}
