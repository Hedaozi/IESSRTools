using System.Data;
using System.Linq;
using MsExcel = Microsoft.Office.Interop.Excel;
using IESSRTools.Core.DotNetFramework.Utils;

namespace IESSRTools.Core.DotNetFramework.Office.Excel
{
    public static class Write
    {
        public static void WriteToNewSheet(MsExcel.Worksheet sheet, DataTable dt)
        {
            object [,] array = dt.ToArray();
            sheet.Range[sheet.Cells[1, 1], sheet.Cells[dt.Rows.Count + 1, dt.Columns.Count]]
                .Value2 = array;
            return;
        }

    }
}
