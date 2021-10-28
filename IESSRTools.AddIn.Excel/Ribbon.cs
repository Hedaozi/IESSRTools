using Microsoft.Office.Tools.Ribbon;
using Microsoft.Office.Tools;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms.Integration;
using System.Windows.Forms;
using Microsoft.Office.Interop.Excel;

namespace IESSRTools.AddIn.Excel
{
    public partial class Ribbon
    {
        private void Ribbon_Load(object sender, RibbonUIEventArgs e)
        {

        }

        private void ExtractLinks(object sender, RibbonControlEventArgs e)
        {
            string key = Globals.ThisAddIn.Application.ActiveWindow.Hwnd + "ExtractLinks";
            if (!Globals.ThisAddIn.TaskPanels.ContainsKey(key))
            {
                CustomTaskPane customTaskPane = Globals.ThisAddIn.CustomTaskPanes.Add(GenerateUserControl(new Pane.ExtractLinks(), "ExtractLinks"), "提取链接");
                customTaskPane.Width = 700;
                Globals.ThisAddIn.TaskPanels.Add(key, customTaskPane);
            }
            Globals.ThisAddIn.TaskPanels[key].Visible = true;
        }

        private UserControl GenerateUserControl(System.Windows.Controls.UserControl wpfUserControl, string name)
        {
            ElementHost elementHost = new ElementHost()
            {
                AutoSize = true,
                Dock = DockStyle.Fill,
                Name = "elementHost1",
                Child = wpfUserControl
            };
            UserControl userControl = new UserControl()
            {
                AutoScaleDimensions = new System.Drawing.SizeF(8F, 15F),
                AutoScaleMode = AutoScaleMode.Font,
                AutoScroll = true,
                AutoSize = true,
                AutoSizeMode = AutoSizeMode.GrowAndShrink,
                Name = name
            };
            userControl.SuspendLayout();
            userControl.Controls.Add(elementHost);
            userControl.ResumeLayout(false);
            userControl.PerformLayout();
            return userControl;
        }

    }
}
