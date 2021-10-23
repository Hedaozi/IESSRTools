using System.Diagnostics;

namespace IESSRTools.Core.Utils
{
    public static class Net
    {
        public static void VisitHtml(string url) => Process.Start(new ProcessStartInfo { FileName = url, UseShellExecute = true });
    }
}
