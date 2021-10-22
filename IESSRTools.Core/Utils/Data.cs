﻿using System.Collections.Generic;
using System.Linq;
using System.Data;

namespace IESSRTools.Core.Utils
{
    public static class Data
    {
        public static List<T> GetColumn<T>(DataTable dt, string colname) => 
            dt.AsEnumerable().Select(c => c.Field<T>(colname)).ToList();

        public static List<T> GetUnique<T>(List<T> list) => 
            new List<T>(new HashSet<T>(list));

        public static List<string> GetTableNames(DataSet ds)
        {
            List<string> names = new();
            foreach (DataTable dt in ds.Tables)
            {
                names.Add(dt.TableName);
            }
            return names;
        }

        public static List<string> GetColumnNames(DataTable dt)
        {
            List<string> names = new();
            foreach (DataColumn dc in dt.Columns)
            {
                names.Add(dc.ColumnName);
            }
            return names;
        }
    }

}
