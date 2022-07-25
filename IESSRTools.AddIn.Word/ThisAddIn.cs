using IESSRTools.Core.DotNetFramework.Office;
using Microsoft.Office.Interop.Word;
using System;
using System.Globalization;
using Office = Microsoft.Office.Core;

namespace IESSRTools.AddIn.Word
{
    public partial class ThisAddIn
    {
        private void ThisAddIn_Startup(object sender, EventArgs e)
        {
            Application.WindowSelectionChange += GetAlignWhenSelectionChanged;
        }

        public void GetAlignWhenSelectionChanged(Selection wdSelection)
        {
            var paragraph = wdSelection.Paragraphs.First;
            var tabStops = paragraph.TabStops;
            var decimalAlignPosition = Globals.Ribbons.Ribbon1.decimalAlignPosition;
            foreach (TabStop tab in tabStops)
            {
                if (tab.Alignment == WdTabAlignment.wdAlignTabDecimal)
                {
                    var positionCh = tab.Position / 10.5;
                    var positionPretty = positionCh.ToString("0.00");
                    positionPretty = float.Parse(positionPretty).ToString("G");
                    decimalAlignPosition.Text = positionPretty;
                    return;
                }
            }
            decimalAlignPosition.Text = "0";
        }

        private void ThisAddIn_Shutdown(object sender, EventArgs e)
        {
            var cultureInfo = new CultureInfo(
                Application.LanguageSettings.get_LanguageID(
                    Office.MsoAppLanguageID.msoLanguageIDUI));
            Localization.WriteOfficeLanguageLocally(cultureInfo.Name);
        }

        #region VSTO 生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要修改
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InternalStartup()
        {
            this.Startup += new System.EventHandler(ThisAddIn_Startup);
            this.Shutdown += new System.EventHandler(ThisAddIn_Shutdown);
        }
        
        #endregion
    }
}
