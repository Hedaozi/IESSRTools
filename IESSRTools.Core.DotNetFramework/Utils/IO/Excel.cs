using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Threading.Tasks;
using ExcelDataReader;
using System.IO;

namespace IESSRTools.Core.DotNetFramework.Utils.IO
{
    public static class Excel
    {
        public static List<string> GetSheetNames(string filePath)
        {
            var sheetNames = new List<string>();
            DataSet sheets = ReadWorkbookAsDataSet(filePath);
            foreach (DataTable sheet in sheets.Tables)
            {
                sheetNames.Add(sheet.TableName);
            }
            return sheetNames;
        }

        public static List<string> GetSheetNames(DataSet sheets)
        {
            var sheetNames = new List<string>();
            foreach (DataTable sheet in sheets.Tables)
            {
                sheetNames.Add(sheet.TableName);
            }
            return sheetNames;
        }

        public static DataSet ReadWorkbookAsDataSet(string path)
        {
            var dataTables = new Dictionary<string, DataTable>();
            DataSet sheets = null;

            using (FileStream fileStream = File.Open(path, FileMode.Open, FileAccess.Read))
            {
                var configuration = new ExcelDataSetConfiguration()
                {
                    ConfigureDataTable = tableReader => new ExcelDataTableConfiguration()
                    {
                        UseHeaderRow = true
                    }
                };

                sheets = ExcelReaderFactory.CreateReader(fileStream)
                    .AsDataSet(configuration: configuration);
            }

            return sheets;
        }
    }
}
