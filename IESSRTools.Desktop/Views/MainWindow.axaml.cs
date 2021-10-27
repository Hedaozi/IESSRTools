using Avalonia;
using Avalonia.Controls;
using Avalonia.Interactivity;
using Avalonia.Markup.Xaml;

namespace IESSRTools.Desktop.Views
{
    public partial class MainWindow : Window
    {
        public readonly string DocumentationUrl_en = "https://hedaozi.gitbook.io/iessrtools.doc.en/";
        public readonly string DocumentationUrl_zh = "https://hedaozi.gitbook.io/iessrtools.doc.zh/";

        public MainWindow()
        {
            InitializeComponent();
# if DEBUG
            this.AttachDevTools();
# endif
        }

        private void InitializeComponent() => AvaloniaXamlLoader.Load(this);

        public void SelectAppsFilter(object sender, SelectionChangedEventArgs args)
        {
            ComboBoxItem ApplicationsAll = this.Find<ComboBoxItem>("ApplicationsAll");
            ComboBoxItem ApplicationsProgram = this.Find<ComboBoxItem>("ApplicationsProgram");
            ComboBoxItem ApplicationsAcademic = this.Find<ComboBoxItem>("ApplicationsAcademic");

            if (ApplicationsAll == null || ApplicationsProgram == null || ApplicationsAcademic == null)
            {
                return;
            }
            ViewModels.MainWindowViewModel thisDC = (ViewModels.MainWindowViewModel)DataContext;
            thisDC.ShowProgram = ApplicationsAll.IsSelected || ApplicationsProgram.IsSelected;
            thisDC.ShowAcademic = ApplicationsAll.IsSelected || ApplicationsAcademic.IsSelected;
            ;
        }

        public void ChangeLanguage(object sender, SelectionChangedEventArgs args)
        {
            ComboBox LangSelector = this.Find<ComboBox>("LangSelector");
            if (LangSelector == null)
            {
                return;
            }
            (Application.Current as App).LangID = LangSelector.SelectedIndex;
            ((App)Application.Current).ChangeLanguage((Application.Current as App).LangID == 0 ? "en" : "zh");
        }

        public void LaunchLabelStata(object sender, RoutedEventArgs args) => new LabelStata().Show();

        public void LaunchFollowJournals(object sender, RoutedEventArgs args) => new FollowJournals().Show();

        public void VisitDocumentation(object sender, RoutedEventArgs args) => Core.Utils.Net.VisitHtml((Application.Current as App).LangID == 0 ? DocumentationUrl_en : DocumentationUrl_zh);
    }
}
