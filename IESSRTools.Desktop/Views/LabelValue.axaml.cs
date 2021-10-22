using Avalonia;
using Avalonia.Controls;
using Avalonia.Interactivity;
using Avalonia.Markup.Xaml;
using System.Data;
using System.Collections.Generic;
using IESSRTools.Core.Program;
using IESSRTools.Core.Utils;
using IESSRTools.Core.Utils.IO;

namespace IESSRTools.Desktop.Views
{
    public partial class LabelValue : Window
    {
        private DataSet? excelData = null;

        public LabelValue()
        {
            InitializeComponent();
#if DEBUG
            this.AttachDevTools();
#endif
        }

        private void InitializeComponent()
        {
            AvaloniaXamlLoader.Load(this);
        }

        public void ImportExcel(object sender, RoutedEventArgs args)
        {
            OpenFileDialog ofd = new();
            ofd.Filters.Add(new FileDialogFilter() { Name = "Excel", Extensions = { "xlsx" } });
            string[] result = ofd.ShowAsync(parent: this).Result;
            if (result.Length == 1)
            {
                excelData = Excel.ReadWorkbookAsDataSet(result[0]);
                this.Find<ComboBox>("VariableTableSelector").SelectedIndex =
                    this.Find<ComboBox>("LabelTableSelector").SelectedIndex = -1;
                this.Find<ComboBox>("VariableTableSelector").Items =
                    this.Find<ComboBox>("LabelTableSelector").Items =
                    Data.GetTableNames(excelData);
            }
        }

        public void SelectVariableTable(object sender, SelectionChangedEventArgs args)
        {
            if (this.Find<ComboBox>("VariableNameSelector") == null ||
                this.Find<ComboBox>("VariableLabelSelector") == null ||
                this.Find<ComboBox>("VariableValueLabelSelector") == null)
            {
                return;
            }
            ComboBox comboBox = this.Find<ComboBox>("VariableTableSelector");
            this.Find<ComboBox>("VariableNameSelector").Items =
                this.Find<ComboBox>("VariableLabelSelector").Items =
                this.Find<ComboBox>("VariableValueLabelSelector").Items =
                comboBox.SelectedItem == null ? new List<string>() :
                    Data.GetColumnNames(excelData.Tables[(string)comboBox.SelectedItem]);

        }

        public void SelectLabelTable(object sender, SelectionChangedEventArgs args)
        {
            if (this.Find<ComboBox>("ValueLabelNameSelector") == null ||
                this.Find<ComboBox>("ValueSelector") == null ||
                this.Find<ComboBox>("LabelSelector") == null)
            {
                return;
            }
            ComboBox comboBox = this.Find<ComboBox>("LabelTableSelector");
            this.Find<ComboBox>("ValueLabelNameSelector").Items =
                this.Find<ComboBox>("ValueSelector").Items =
                this.Find<ComboBox>("LabelSelector").Items =
                comboBox.SelectedItem == null ? new List<string>() :
                    Data.GetColumnNames(excelData.Tables[(string)comboBox.SelectedItem]);
        }

        public void GenerateCode(object sender, RoutedEventArgs args)
        {
            ComboBox VariableTableSelector = this.Find<ComboBox>("VariableTableSelector");
            ComboBox LabelTableSelector = this.Find<ComboBox>("LabelTableSelector");
            ComboBox VariableNameSelector = this.Find<ComboBox>("VariableNameSelector");
            ComboBox VariableLabelSelector = this.Find<ComboBox>("VariableLabelSelector");
            ComboBox VariableValueLabelSelector = this.Find<ComboBox>("VariableValueLabelSelector");
            ComboBox ValueLabelNameSelector = this.Find<ComboBox>("ValueLabelNameSelector");
            ComboBox ValueSelector = this.Find<ComboBox>("ValueSelector");
            ComboBox LabelSelector = this.Find<ComboBox>("LabelSelector");
            if (VariableTableSelector.SelectedItem == null ||
                LabelTableSelector.SelectedItem == null ||
                VariableNameSelector.SelectedItem == null ||
                VariableLabelSelector.SelectedItem == null ||
                VariableValueLabelSelector.SelectedItem == null ||
                ValueLabelNameSelector.SelectedItem == null ||
                ValueSelector.SelectedItem == null ||
                LabelSelector.SelectedItem == null)
            {
                return;
            }
            string labelDefineCode = LabelStata.DefineValueLabels(
                excelData.Tables[(string)LabelTableSelector.SelectedItem],
                (string)ValueLabelNameSelector.SelectedItem,
                (string)ValueSelector.SelectedItem,
                (string)LabelSelector.SelectedItem
            );
            string combineCode = LabelStata.CombineVariablesAndLabels(
                excelData.Tables[(string)VariableTableSelector.SelectedItem],
                (string)VariableNameSelector.SelectedItem,
                (string)VariableLabelSelector.SelectedItem,
                (string)VariableValueLabelSelector.SelectedItem
            );
            new DoFile(labelDefineCode + "\n" + combineCode).Show();
        }
    }
}
