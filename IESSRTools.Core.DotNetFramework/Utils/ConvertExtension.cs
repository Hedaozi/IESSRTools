using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Threading.Tasks;

namespace IESSRTools.Core.DotNetFramework.Utils
{
    public static class ConvertExtension
    {
        public static object[,] ToArray(this DataTable dt)
        {
            object[,] array = new object[dt.Rows.Count + 1, dt.Columns.Count];
            for (int j = 0; j < dt.Columns.Count; j++)
            {
                array[0, j] = dt.Columns[j].ColumnName;
                for (int i = 1; i <= dt.Rows.Count; i++)
                {
                    array[i, j] = dt.Rows[i - 1][j];
                }
            }
            return array;
        }
    }
}
