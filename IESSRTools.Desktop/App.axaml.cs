using Avalonia;
using Avalonia.Controls;
using Avalonia.Controls.ApplicationLifetimes;
using Avalonia.Markup.Xaml;
using Avalonia.Markup.Xaml.MarkupExtensions;
using Avalonia.Markup.Xaml.Styling;
using IESSRTools.Desktop.Properties;
using IESSRTools.Desktop.Views;
using System;

namespace IESSRTools.Desktop
{
    public class App : Application
    {
        public int LangID = 0;

        public override void Initialize()
        {
            AvaloniaXamlLoader.Load(this);
        }

        public override void OnFrameworkInitializationCompleted()
        {
            if (ApplicationLifetime is IClassicDesktopStyleApplicationLifetime desktop)
            {
                desktop.MainWindow = new MainWindow();
            }

            base.OnFrameworkInitializationCompleted();
        }

        public void ChangeLanguage(string language)
        {
            Current.Styles[0] = new StyleInclude(new Uri("resm:App.Styles?assembly=IESSRTools.Desktop"))
            {
                Source = new Uri($"avares://IESSRTools.Desktop/Assets/Localizations/{language}.axaml")
            };
        }
    }
}
