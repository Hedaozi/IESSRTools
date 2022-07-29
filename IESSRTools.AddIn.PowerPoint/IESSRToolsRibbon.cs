using Microsoft.Office.Tools.Ribbon;
using Microsoft.Office.Interop.PowerPoint;
using IESSRTools.Core.DotNetFramework.Office.PowerPoint;

namespace IESSRTools.AddIn.PowerPoint
{
    public partial class IESSRToolsRibbon
    {
        private readonly AcrylicFormat acrylicFormat = AcrylicFormat.Load();

        private void IESSRToolsRibbon_Load(object sender, RibbonUIEventArgs e)
        {

        }

        private void GenerateAcrylicEffect(object sender, RibbonControlEventArgs e)
        {
            var ppApp = Globals.ThisAddIn.Application;
            var pic = ppApp.ActiveWindow.Selection.ShapeRange[1];
            Acrylic.Generate(pic, acrylicFormat);
        }

        private void SetParameters(object sender, RibbonControlEventArgs e) => new Windows.AcrylicParameters(acrylicFormat).ShowDialog();
    }
}
