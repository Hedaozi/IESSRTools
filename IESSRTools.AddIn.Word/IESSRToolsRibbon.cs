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
        private readonly ResourceManager rm = Properties.Resources.ResourceManager;

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
                MessageBox.Show(rm.GetString("noTable"), rm.GetString("warningMsgCaption"));
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

        private void JustifyDecimalText(float value, bool modify = true)
        {
            if (float.TryParse(decimalAlignPosition.Text, out var positionCh))
            {
                positionCh = modify ? positionCh + value : value;
                positionCh = positionCh < 0 ? 0 : positionCh;
                decimalAlignPosition.Text = positionCh.ToString();
                ApplyAlign(positionCh);
            }
            else
            {
                decimalAlignPosition.Text = "0";
            }
        }

        private void JustifyDecimalAlign(object sender, RibbonControlEventArgs e)
        {
            if (float.TryParse(decimalAlignPosition.Text, out var positionCh) && (positionCh >= 0))
            {
                ApplyAlign(positionCh);
            }
            else
            {
                MessageBox.Show(rm.GetString("invalidNumError"), rm.GetString("warningMsgCaption"));
            }
        }

        private void DecreaseAlign(object sender, RibbonControlEventArgs e) => JustifyDecimalText(-0.25F);

        private void IncreaseAlign(object sender, RibbonControlEventArgs e) => JustifyDecimalText(0.25F);

        private void RemoveAlign(object sender, RibbonControlEventArgs e) => JustifyDecimalText(0, false);

        private void ApplyAlign(object sender, RibbonControlEventArgs e)
        {
            float.TryParse(decimalAlignPosition.Text, out var positionCh);
            ApplyAlign(positionCh);
        }

        private void ApplyAlign(float positionCh) => Align.SetDecimalAlign(Globals.ThisAddIn.Application.Selection, positionCh);

    }
}
