using Microsoft.Office.Interop.Word;
using Microsoft.Office.Core;

namespace IESSRTools.Core.DotNetFramework.Office.Word
{
    public static class FormatTable
    {
        public static bool FindThreeLineTableStyle(Document doc)
        {
            foreach (Style style in doc.Styles)
            {
                if (style.NameLocal == "IESSR Three-Line Table")
                {
                    return true;
                }
            }
            return false;
        }

        public static void FormatThreeLineTable(Document doc, Table table)
        {
            table.set_Style(doc.Styles["IESSR Three-Line Table"]);

            table.ApplyStyleHeadingRows = true;
            table.ApplyStyleLastRow = true;
            table.ApplyStyleRowBands = false;
            table.ApplyStyleFirstColumn = false;
            table.ApplyStyleLastColumn = false;
            table.ApplyStyleColumnBands = false;
        }

        public static void AddThreeLineTableStyle(Document document)
        {
            var style = document.Styles.Add("IESSR Three-Line Table", WdStyleType.wdStyleTypeTable);
            style.set_BaseStyle(WdBuiltinStyle.wdStyleNormalTable);

            var fontStyle = style.Font;
            fontStyle.NameFarEast = "宋体";
            fontStyle.Name = "Times New Roman";
            fontStyle.Size = 10.5F;

            var wholeTableStyle = style.Table;
            wholeTableStyle.Borders[WdBorderType.wdBorderTop].LineStyle = WdLineStyle.wdLineStyleSingle;
            wholeTableStyle.Borders[WdBorderType.wdBorderTop].LineWidth = WdLineWidth.wdLineWidth150pt;
            wholeTableStyle.Borders[WdBorderType.wdBorderBottom].LineStyle = WdLineStyle.wdLineStyleSingle;
            wholeTableStyle.Borders[WdBorderType.wdBorderBottom].LineWidth = WdLineWidth.wdLineWidth150pt;


            var headRowsStyle = style.Table.Condition(WdConditionCode.wdFirstRow);
            headRowsStyle.Borders[WdBorderType.wdBorderBottom].LineStyle = WdLineStyle.wdLineStyleSingle;
            headRowsStyle.Borders[WdBorderType.wdBorderBottom].LineWidth = WdLineWidth.wdLineWidth100pt;
            headRowsStyle.Font.Bold = 1;
            headRowsStyle.ParagraphFormat.Alignment = WdParagraphAlignment.wdAlignParagraphCenter;
        }

        public static void SetVerticalAlignCenter(Table table)
        {
            table.Select();
            var selection = table.Application.Selection;
            selection.Cells.VerticalAlignment = WdCellVerticalAlignment.wdCellAlignVerticalCenter;
        }

        public static void ResetTableHeaders(Selection headers)
        {
            headers.Rows.HeadingFormat = (int)MsoTriState.msoTrue;
        }
    }
}
