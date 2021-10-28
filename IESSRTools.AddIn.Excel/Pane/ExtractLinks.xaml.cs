using System;
using System.Collections.Generic;
using System.Data;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using IESSRTools.Core.DotNetFramework.Utils.IO;
using IESSROffice = IESSRTools.Core.DotNetFramework.Office;

namespace IESSRTools.AddIn.Excel.Pane
{
    /// <summary>
    /// ExtractLinks.xaml 的交互逻辑
    /// </summary>
    public partial class ExtractLinks : UserControl
    {
        List<string> files = null;

        public ExtractLinks()
        {
            InitializeComponent();
        }

        private void SelectDir(object sender, RoutedEventArgs e)
        {
            System.Windows.Forms.FolderBrowserDialog fbd = new System.Windows.Forms.FolderBrowserDialog();
            if (fbd.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                files = Core.DotNetFramework.Utils.IO.Path.GetFilesByExt(fbd.SelectedPath, ".lnk");
                LinkFiles.Text = string.Join("|", files);
            }
        }

        private void Run(object sender, RoutedEventArgs e)
        {
            if (files == null)
            {
                MessageBox.Show("未选择文件");
                return;
            }
            DataTable dt = (bool)OnlyTarger.IsChecked ? Shortcut.ExtractTargets(files) : Shortcut.ExtractTargetDetails(files);
            IESSROffice.Excel.Write.WriteToNewSheet(
                (Microsoft.Office.Interop.Excel.Worksheet)Globals.ThisAddIn.Application.ActiveWorkbook.Worksheets.Add(), dt);
        }
    }
}
