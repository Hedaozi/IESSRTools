using Avalonia;
using Avalonia.Controls;
using Avalonia.Interactivity;
using Avalonia.Markup.Xaml;

namespace IESSRTools.Desktop.Views
{
    public partial class MainWindow : Window
    {
        public readonly string DocumentationUrl = "https://hedaozi.gitbook.io/iessr.tools.documentation/";

        public MainWindow()
        {
            InitializeComponent();
            #if DEBUG
            this.AttachDevTools();
            #endif
        }

        private void InitializeComponent()
        {
            AvaloniaXamlLoader.Load(this);
        }

        public void LaunchLabelStata(object sender, RoutedEventArgs args) => new LabelStata().Show();
        public void LaunchFollowJournals(object sender, RoutedEventArgs args) => new FollowJournals().Show();
        public void VisitDocumentation(object sender, RoutedEventArgs args) => Core.Utils.Net.VisitHtml(DocumentationUrl);
    }
}
