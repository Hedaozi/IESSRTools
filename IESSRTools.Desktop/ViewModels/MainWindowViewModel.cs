using ReactiveUI;
using System;
using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace IESSRTools.Desktop.ViewModels
{
    public class MainWindowViewModel : ViewModelBase
    {
        public bool _ShowProgram = true;
        public bool _ShowAcademic = true;

        public bool ShowProgram
        {
            get => _ShowProgram;
            set => this.RaiseAndSetIfChanged(ref _ShowProgram, value);
        }
        public bool ShowAcademic
        {
            get => _ShowAcademic;
            set => this.RaiseAndSetIfChanged(ref _ShowAcademic, value);
        }
    }
}
