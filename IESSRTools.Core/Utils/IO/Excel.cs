using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Threading.Tasks;
using ExcelDataReader;
using System.IO;

namespace IESSRTools.Core.Utils.IO
{
    public static class Excel
    {
        public static List<string> GetSheetNames(string filePath)
        {
            List<string> sheetNames = new();
            DataSet sheets = ReadWorkbookAsDataSet(filePath);
            foreach (DataTable sheet in sheets.Tables)
            {
                sheetNames.Add(sheet.TableName);
            }
            return sheetNames;
        }

        public static List<string> GetSheetNames(DataSet sheets)
        {
            List<string> sheetNames = new();
            foreach (DataTable sheet in sheets.Tables)
            {
                sheetNames.Add(sheet.TableName);
            }
            return sheetNames;
        }

        public static DataSet ReadWorkbookAsDataSet(string path)
        {
            Dictionary<string, DataTable> dataTables = new();
            DataSet sheets = null;

            using (FileStream fileStream = File.Open(path, FileMode.Open, FileAccess.Read))
            {
                ExcelDataSetConfiguration configuration = new()
                {
                    ConfigureDataTable = tableReader => new()
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
