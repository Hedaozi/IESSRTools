using Avalonia;
using Avalonia.Controls;
using Avalonia.Interactivity;
using Avalonia.Markup.Xaml;
using IESSRTools.Core.Utils;

namespace IESSRTools.Desktop.Views
{
    public partial class FollowJournals : Window
    {
        public readonly string HelpUrl_en = "https://hedaozi.gitbook.io/iessrtools.doc.en-us/guides/academic-tools/follow-journal";
        public readonly string HelpUrl_zh = "https://hedaozi.gitbook.io/iessrtools.doc.zh-cn/guides/academic-tools/follow-journal";

        public FollowJournals()
        {
            InitializeComponent();
# if DEBUG
            this.AttachDevTools();
#endif
        }

        private void InitializeComponent()
        {
            AvaloniaXamlLoader.Load(this);
        }

        public void SearchForJournals(object sender, RoutedEventArgs args)
        {
            TextBox JournalNameInput = this.Find<TextBox>("JournalName");
            if (JournalNameInput.Text == null || JournalNameInput.Text.Length == 0)
            {
                new MessageBox("Please input journal's name!").ShowDialog(owner: this);
                return;
            }
            if ((bool)this.Find<RadioButton>("PubMed").IsChecked)
            {
                Core.Utils.Net.VisitHtml(Core.Literature.FollowJournals.PubMed(JournalNameInput.Text));
            }
            else if ((bool)this.Find<RadioButton>("Google").IsChecked)
            {
                Core.Utils.Net.VisitHtml(Core.Literature.FollowJournals.Google(JournalNameInput.Text));
            }
            else if ((bool)this.Find<RadioButton>("Baidu").IsChecked)
            {
                Core.Utils.Net.VisitHtml(Core.Literature.FollowJournals.Baidu(JournalNameInput.Text));
            }
            else
            {
                new MessageBox("Please select a serach provider!").ShowDialog(owner: this);
            }
        }

        public void VisitHelp(object sender, RoutedEventArgs args) => Net.VisitHtml((Application.Current as App).LangID == 0 ? HelpUrl_en : HelpUrl_zh);
    }
}
