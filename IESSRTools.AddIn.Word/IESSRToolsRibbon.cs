using Microsoft.Office.Tools.Ribbon;
using Microsoft.Office.Interop.Word;
using IESSRTools.Core.DotNetFramework.Office.Word;
using System.Windows.Forms;
using System.Reflection;
using System.Resources;

namespace IESSRTools.AddIn.Word
{
    public partial class IESSRToolsRibbon
    {
        private readonly ResourceManager rm = new ResourceManager("IESSRTools.AddIn.Word.IESSRToolsRibbon", Assembly.GetExecutingAssembly());

        private void Ribbon1_Load(object sender, RibbonUIEventArgs e)
        {
            
        }

        private void FormatThreeLineTable(object sender, RibbonControlEventArgs e)
        {
            var wdApp = Globals.ThisAddIn.Application;
            var doc = wdApp.ActiveDocument;
            var tables = wdApp.Selection.Tables;
            if (tables.Count == 0)
            {
                MessageBox.Show(rm.GetString("noTableNotify"));
                return;
            }
            var table = wdApp.Selection.Tables[1];

            if (!FormatTable.FindThreeLineTableStyle(doc))
            {
                FormatTable.AddThreeLineTableStyle(doc);
            }
            FormatTable.FormatThreeLineTable(doc, table);
            table.Rows.First.HeadingFormat = -1;

            if (verticalAlignCenterToggle.Checked)
            {
                FormatTable.SetVerticalAlignCenter(table);
            }
        }

        private void ResetTableHeaders(object sender, RibbonControlEventArgs e)
        {
            FormatTable.ResetTableHeaders(Globals.ThisAddIn.Application.Selection);
        }

        private void FormatAllTable(object sender, RibbonControlEventArgs e)
        {
            var wdApp = Globals.ThisAddIn.Application;
            var doc = wdApp.ActiveDocument;
            var tables = doc.Tables;

            if (!FormatTable.FindThreeLineTableStyle(doc))
            {
                FormatTable.AddThreeLineTableStyle(doc);
            }
            foreach (Table table in tables)
            {
                FormatTable.FormatThreeLineTable(doc, table);
                table.Rows.First.HeadingFormat = -1;
                if (verticalAlignCenterToggle.Checked)
                {
                    FormatTable.SetVerticalAlignCenter(table);
                }
            }
        }
    }
}
