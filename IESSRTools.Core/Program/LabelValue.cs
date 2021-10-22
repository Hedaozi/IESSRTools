using System;
using System.Collections.Generic;
using System.Data;
using IESSRTools.Core.Utils;

namespace IESSRTools.Core.Program
{
    public class LabelStata
    {
        public static string DefineValueLabels(
            DataTable valueLabelTable, 
            string labelNameColname,
            string valueColname,
            string labelColname
        )
        {
            string code = "";
            List<string> labelNames = Data.GetUnique(Data.GetColumn<object>(valueLabelTable, labelNameColname)).
                ConvertAll(new Converter<object, string>((object o) => { return o?.ToString(); }));
            foreach (string labelName in labelNames)
            {
                string expression = string.Format("{0} = '{1}'", labelNameColname, labelName);
                DataTable thisTable = valueLabelTable.Select(expression).CopyToDataTable();
                List<string> values = Data.GetColumn<object>(thisTable, valueColname).
                    ConvertAll(new Converter<object, string>((object o) => { return o?.ToString(); }));
                List<string> labels = Data.GetColumn<object>(thisTable, labelColname).
                    ConvertAll(new Converter<object, string>((object o) => { return o?.ToString(); }));
                code += DefineValueLabel(labelName, values, labels);
            }
            return code;
        }

        public static string DefineValueLabel(
            string labelName, 
            List<string> values, 
            List<string> labels
        )
        {
            string code = "lab def " + labelName;
            for (int i = 0; i < values.Count; i++)
            {
                code += string.Format(" {0} {1}", values[i], SafeStataString(labels[i]));
            }
            code += "\n";
            return code;
        }

        public static string CombineVariablesAndLabels(
            DataTable varLabelTable,
            string varNameColname,
            string varLabelColname,
            string valueLabelColname
        )
        {
            string code = "";
            for (int i = 0; i < varLabelTable.Rows.Count; i++)
            {
                code +=
                    varLabelTable.Rows[i][varNameColname] == DBNull.Value ? "" : 
                    string.Format(
                        "lab var {0} {1}\n", varLabelTable.Rows[i][varNameColname], 
                        SafeStataString((string)varLabelTable.Rows[i][varLabelColname])
                    );
                code += 
                    varLabelTable.Rows[i][valueLabelColname] == DBNull.Value ? "" : 
                    string.Format(
                        "lab val {0} {1}\n", varLabelTable.Rows[i][varNameColname],
                        (string)varLabelTable.Rows[i][valueLabelColname]
                    );
                code += "\n";
            }

            return code;
        }

        public static string SafeStataString(string str) => str.Contains("\"") ? "`\"" + str + "\"'" : "\"" + str + "\"";
    }
}
