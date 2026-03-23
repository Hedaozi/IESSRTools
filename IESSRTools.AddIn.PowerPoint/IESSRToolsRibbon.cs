using Microsoft.Office.Tools.Ribbon;
using Microsoft.Office.Interop.PowerPoint;
using IESSRTools.Core.DotNetFramework.Office.PowerPoint;
using IESSRTools.Core.DotNetFramework.Utils.IO;

namespace IESSRTools.AddIn.PowerPoint
{
    public partial class IESSRToolsRibbon
    {
        private readonly ConfigManager<AcrylicFormat> manager = new ConfigManager<AcrylicFormat>(AcrylicFormat.FilePath);
        private readonly AcrylicFormat format;

        private void IESSRToolsRibbon_Load(object sender, RibbonUIEventArgs e)
        {
            
        }

        private void GenerateAcrylicEffect(object sender, RibbonControlEventArgs e)
        {
            var ppApp = Globals.ThisAddIn.Application;
            var pic = ppApp.ActiveWindow.Selection.ShapeRange[1];
            Acrylic.Generate(pic, format);
        }

        private void SetParameters(object sender, RibbonControlEventArgs e)
        {
            var copy = manager.Duplicate(format);
            var dialog = new Windows.AcrylicParameters(copy);
            dialog.ShowDialog();
            if (dialog.Ok)
            {
                manager.Overwrite(format, copy);
                if (dialog.Permanent)
                {
                    manager.Save(format);
                }
            }
        }
    }
}
