using Avalonia;
using Avalonia.Controls;
using Avalonia.Interactivity;
using Avalonia.Markup.Xaml;

namespace IESSRTools.Desktop.Views
{
    public partial class FollowJournals : Window
    {
        public FollowJournals()
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
            else
            {
                Core.Utils.Net.VisitHtml(Core.Literature.FollowJournals.Google(JournalNameInput.Text));
            }
        }
    }
}
