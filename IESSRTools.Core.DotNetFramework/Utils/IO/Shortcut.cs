using System.IO;
using System.Collections.Generic;
using System.Data;
using IWshRuntimeLibrary;

namespace IESSRTools.Core.DotNetFramework.Utils.IO
{
    public static class Shortcut
    {
        public static string GetTarget(string path) => new WshShell().CreateShortcut(path).TargetPath;

        public static List<string> GetTargetDetails(string path) => new List<string>(Directory.GetFiles(GetTarget(path)));

        public static DataTable ExtractTargets(List<string> paths)
        {
            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn() { ColumnName = "Source" });
            dt.Columns.Add(new DataColumn() { ColumnName = "Target" });
            foreach (string path in paths)
            {
                dt.Rows.Add(path, GetTarget(path));
            }
            return dt;
        }

        public static DataTable ExtractTargetDetails(List<string> paths)
        {
            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn() { ColumnName = "Source" });
            dt.Columns.Add(new DataColumn() { ColumnName = "FileDirectory" });
            dt.Columns.Add(new DataColumn() { ColumnName = "FilePath" });
            foreach (string path in paths)
            {
                string target = GetTarget(path);
                foreach (string file in Directory.GetFiles(target))
                {
                    dt.Rows.Add(path, target, file);
                }
            }
            return dt;
        }
    }
}
