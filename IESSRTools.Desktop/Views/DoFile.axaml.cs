using Avalonia;
using Avalonia.Controls;
using Avalonia.Interactivity;
using Avalonia.Markup.Xaml;
using System.IO;
using System.Threading.Tasks;

namespace IESSRTools.Desktop.Views
{
    public partial class DoFile : Window
    {
        public DoFile()
        {
            InitializeComponent();
# if DEBUG
            this.AttachDevTools();
# endif
        }

        public DoFile(string code)
        {
            InitializeComponent();
# if DEBUG
            this.AttachDevTools();
# endif
            this.Find<TextBox>("viewer").Text = code;
        }

        private void InitializeComponent()
        {
            AvaloniaXamlLoader.Load(this);
        }


        public void SaveAsDoFile(object sender, RoutedEventArgs args)
        {
            string code = this.Find<TextBox>("viewer").Text;
            SaveFileDialog sfd = new();
            sfd.Filters.Add(new FileDialogFilter() { Name = "Stata Do Files", Extensions = { "do" } });
            sfd.ShowAsync(parent: this).ContinueWith((Task<string> t) =>
            {
                if (t.IsCompleted && t.Result != null)
                {
                    File.WriteAllText(t.Result, code);
                }
            });
        }
    }
}
