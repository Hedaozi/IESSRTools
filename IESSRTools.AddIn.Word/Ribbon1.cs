using Microsoft.Office.Tools.Ribbon;
using System.IO;
using System.Windows.Forms;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Office.Interop.Word;
using System.IO.Pipes;

namespace IESSRTools.AddIn.Word
{
    public partial class Ribbon1
    {
        private List<string> encodings = new List<string>();

        private void Ribbon1_Load(object sender, RibbonUIEventArgs e)
        {
            foreach (EncodingInfo encodingInfo in Encoding.GetEncodings())
            {
                encodings.Add(encodingInfo.Name);
                RibbonDropDownItem item_1 = Factory.CreateRibbonDropDownItem();
                RibbonDropDownItem item_2 = Factory.CreateRibbonDropDownItem();
                item_1.Label = encodingInfo.Name;
                item_2.Label = encodingInfo.Name;
                comboBox1.Items.Add(item_1);
                comboBox2.Items.Add(item_2);
            }
            comboBox1.Text = "utf-8";
            comboBox2.Text = "gb2312";
        }

        private void button1_Click(object sender, RibbonControlEventArgs e)
        {
            if (encodings.Contains(comboBox1.Text) && encodings.Contains(comboBox2.Text))
            {
                OpenFileDialog ofd = new OpenFileDialog()
                {
                    Filter = "RTF文件|*.rtf",
                    Multiselect = false
                };
                if (ofd.ShowDialog() == DialogResult.OK)
                {
                    Encoding srcEncoding = Encoding.GetEncoding(comboBox1.Text);
                    Encoding dstEncoding = Encoding.GetEncoding(comboBox2.Text);
                    string fn = ofd.FileName;
                    byte[] srcBytes = null;
                    using (FileStream fs = new FileStream(fn, FileMode.Open, FileAccess.Read))
                    {
                        srcBytes = new byte[fs.Length];
                        fs.Read(srcBytes, 0, srcBytes.Length);
                    }
                    File.Delete(fn);
                    using (FileStream fs = new FileStream(fn, FileMode.Create, FileAccess.Write))
                    {
                        byte[] dstBytes = Encoding.Convert(srcEncoding, dstEncoding, srcBytes);
                        fs.Write(dstBytes, 0, dstBytes.Length);
                    }
                    Globals.ThisAddIn.Application.Documents.Open(fn);
                }
            }
            else
            {
                MessageBox.Show("编码不存在！");
            }
        }

    }
}
