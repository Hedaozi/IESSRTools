using System.Windows;
using System.Windows.Input;
using System.Resources;
using IESSRTools.Core.DotNetFramework.Office.PowerPoint;
using IESSRTools.Core.DotNetFramework.Utils;

namespace IESSRTools.AddIn.PowerPoint.Windows
{
    /// <summary>
    /// MajorsAnalysis.xaml 的交互逻辑
    /// </summary>
    public partial class AcrylicParameters : Window
    {
        private readonly AcrylicFormat acrylicFormat;
        private readonly AcrylicParametersVM vm;

        public AcrylicParameters(AcrylicFormat acrylicFormat)
        {
            InitializeComponent();
            this.acrylicFormat = acrylicFormat;
            DataContext = vm = new AcrylicParametersVM(acrylicFormat);
        }


        private void CloseWindow(object sender, RoutedEventArgs e) => Close();

        private void DragWindow(object sender, MouseEventArgs e)
        {
            Point p = e.GetPosition(TitleBarBlank);
            if (e.LeftButton == MouseButtonState.Pressed &&
                p.X < TitleBarBlank.ActualWidth &&
                p.Y < TitleBarBlank.ActualHeight)
            {
                DragMove();
            }
        }
    }

    public class AcrylicParametersVM : ViewModelBase
    {
        #region UiString
        private static readonly ResourceManager rm = new ResourceManager(typeof(Resources.AcrylicParameters));
        public string TWindowTitle => rm.GetString("WindowTitle");
        public string TShadowHeader => rm.GetString("ShadowHeader");
        public string TShadowInfo => rm.GetString("ShadowInfo");
        public string TShadowTransparency => rm.GetString("ShadowTransparency");
        public string TShadowSize => rm.GetString("ShadowSize");
        public string TShadowBlur => rm.GetString("ShadowBlur");
        public string TShadowOffsetX => rm.GetString("ShadowOffsetX");
        public string TShadowOffsetY => rm.GetString("ShadowOffsetY");
        public string TBlurHeader => rm.GetString("BlurHeader");
        public string TColorHeader => rm.GetString("ColorHeader");
        public string TColorInfo => rm.GetString("ColorInfo");
        public string TColorTheme => rm.GetString("ColorTheme");
        public string TColorThemeLight => rm.GetString("ColorThemeLight");
        public string TColorThemeDark => rm.GetString("ColorThemeDark");
        public string TColorTransparency => rm.GetString("ColorTransparency");

        public string SShadowTransparency => $"{ShadowTransparency:F0}%";
        public string SShadowSize => $"{ShadowSize:F0}%";
        public string SShadowBlur => $"{ShadowBlur:F0}Pt";
        public string SShadowOffsetX => $"{ShadowOffsetX:F0}Pt";
        public string SShadowOffsetY => $"{ShadowOffsetY:F0}Pt";
        public string SBlurEffectRadius => $"{BlurEffectRadius:F0}Pt";
        public string SLightTheme => LightTheme ? "Light" : "Dark";
        public string SMaskTransparency => $"{MaskTransparency:F0}%";
        #endregion

        private readonly AcrylicFormat acrylicFormat;
        public float ShadowTransparency { get { return acrylicFormat.ShadowTransparency * 100; } set { acrylicFormat.ShadowTransparency = value / 100; RaisePropertyChangedEvent("SShadowTransparency"); } }
        public float ShadowSize { get { return acrylicFormat.ShadowSize; } set { acrylicFormat.ShadowSize = value; RaisePropertyChangedEvent("SShadowSize"); } }
        public float ShadowBlur { get { return acrylicFormat.ShadowBlur; } set { acrylicFormat.ShadowBlur = value; RaisePropertyChangedEvent("SShadowBlur"); } }
        public float ShadowOffsetX { get { return acrylicFormat.ShadowOffsetX; } set { acrylicFormat.ShadowOffsetX = value; RaisePropertyChangedEvent("SShadowOffsetX"); } }
        public float ShadowOffsetY { get { return acrylicFormat.ShadowOffsetY; } set { acrylicFormat.ShadowOffsetY = value; RaisePropertyChangedEvent("SShadowOffsetY"); } }
        public float BlurEffectRadius { get { return acrylicFormat.BlurEffectRadius; } set { acrylicFormat.BlurEffectRadius = value; RaisePropertyChangedEvent("SBlurEffectRadius"); } }
        public bool LightTheme { get { return acrylicFormat.LightTheme; } set { acrylicFormat.LightTheme = value; RaisePropertyChangedEvent("SLightTheme"); } }
        public float MaskTransparency { get { return acrylicFormat.MaskTransparency * 100; } set { acrylicFormat.MaskTransparency = value / 100; RaisePropertyChangedEvent("SMaskTransparency"); } }

        public AcrylicParametersVM(AcrylicFormat acrylicFormat) => this.acrylicFormat = acrylicFormat;
    }
}
