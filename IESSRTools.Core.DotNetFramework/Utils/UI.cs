using System.ComponentModel;
using System.Diagnostics;

namespace IESSRTools.Core.DotNetFramework.Utils
{
    public abstract class ViewModelBase : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;
        protected void RaisePropertyChangedEvent([System.Runtime.CompilerServices.CallerMemberName] string propertyName = "")
        {
            propertyName = propertyName == "" ? GetCallerMemberName() : propertyName;
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        private string GetCallerMemberName()
        {
            StackTrace trace = new StackTrace();
            StackFrame frame = trace.GetFrame(2);
            var propertyName = frame.GetMethod().Name;
            if (propertyName.StartsWith("get_") || propertyName.StartsWith("set_") || propertyName.StartsWith("put_"))
            {
                propertyName = propertyName.Substring("get_".Length);
            }
            return propertyName;
        }
    }
}
