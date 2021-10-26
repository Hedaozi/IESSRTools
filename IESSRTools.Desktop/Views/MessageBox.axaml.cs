using Avalonia;
using Avalonia.Controls;
using Avalonia.Controls.Presenters;
using Avalonia.Markup.Xaml;

namespace IESSRTools.Desktop.Views
{
    public partial class MessageBox : Window
    {
        public MessageBox()
        {
            InitializeComponent();
# if DEBUG
            this.AttachDevTools();
# endif
        }

        public MessageBox(string message)
        {
            InitializeComponent();
#if DEBUG
            this.AttachDevTools();
#endif
            this.Find<TextPresenter>("message").Text = message;
        }

        private void InitializeComponent()
        {
            AvaloniaXamlLoader.Load(this);
        }
    }
}
