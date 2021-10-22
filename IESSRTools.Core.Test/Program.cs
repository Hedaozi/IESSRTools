using System;
using System.Text;

namespace IESSRTools.Core.Test
{
    class Program
    {
        static void Main(string[] args)
        {
            Encoding.RegisterProvider(CodePagesEncodingProvider.Instance);
            string path = "C:\\Users\\asus\\Desktop\\Demo.xlsx";
            var ds = Utils.IO.Excel.ReadWorkbookAsDataSet(path);
            Console.WriteLine(Core.Program.LabelStata.DefineValueLabels(
                ds.Tables["Value"], "value_label", "value", "label"
            ));
            Console.WriteLine(Core.Program.LabelStata.CombineVariablesAndLabels(
                ds.Tables["Var"], "variable", "variable_label", "value_label"
            ));
        }
    }
}
