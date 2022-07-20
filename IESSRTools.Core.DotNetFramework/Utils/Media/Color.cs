using Microsoft.Office.Interop.Word;
using SysMedia = System.Windows.Media;
using System;

namespace IESSRTools.Core.DotNetFramework.Utils.Media
{
    public static class Color
    {
        public static SysMedia.Color FromHtml(string html)
        {
            return SysMedia.Color.FromArgb(
                Convert.ToByte(html.Substring(1, 2), 16),
                Convert.ToByte(html.Substring(3, 2), 16),
                Convert.ToByte(html.Substring(5, 2), 16),
                Convert.ToByte(html.Substring(7, 2), 16)
            );
        }

        public static SysMedia.Color HexToRgb(string html)
        {
            return SysMedia.Color.FromRgb(
                Convert.ToByte(html.Substring(1, 2), 16),
                Convert.ToByte(html.Substring(3, 2), 16),
                Convert.ToByte(html.Substring(5, 2), 16)
            );
        }

        public static WdColor ToWdColor(SysMedia.Color color)
        {
            return (WdColor)(color.R + (color.G * 256) + (color.B * 256 * 256));
        }

        public static WdColor ToWdColor(string html)
        {
            SysMedia.Color color = FromHtml(html);
            return (WdColor)(color.R + (color.G * 256) + (color.B * 256 * 256));
        }

        public static SysMedia.Color Mask(SysMedia.Color bColor, SysMedia.Color fColor)
        {
            var alpha = (double)fColor.A / 255;

            var r = fColor.R * alpha + bColor.R * (1 - alpha);
            var g = fColor.G * alpha + bColor.G * (1 - alpha);
            var b = fColor.B * alpha + bColor.B * (1 - alpha);

            return SysMedia.Color.FromRgb((byte)r, (byte)g, (byte)b);
        }

        public static SysMedia.Color Mask(
            double bR, double bG, double bB, 
            double fA, double fR, double fG, double fB, 
            out double r, out double g, out double b)
        {
            var alpha = fA / 255;

            r = fR * alpha + bR * (1 - alpha);
            g = fG * alpha + bG * (1 - alpha);
            b = fB * alpha + bB * (1 - alpha);

            return SysMedia.Color.FromRgb((byte)r, (byte)g, (byte)b);
        }

        public static SysMedia.Color LinearGradient(SysMedia.Color from, SysMedia.Color to, double number)
        {
            var r = Math.Min(from.R, to.R) + number * (Math.Max(from.R, to.R) - Math.Min(from.R, to.R));
            var g = Math.Min(from.G, to.G) + number * (Math.Max(from.G, to.G) - Math.Min(from.G, to.G));
            var b = Math.Min(from.B, to.B) + number * (Math.Max(from.B, to.B) - Math.Min(from.B, to.B));

            return SysMedia.Color.FromRgb((byte)r, (byte)g, (byte)b);
        }

        public static SysMedia.Color LinearGradient(
            double fR, double fG, double fB, 
            double tR, double tG, double tB, 
            double number, 
            out double r, out double g, out double b)
        {
            r = Math.Min(fR, tR) + number * (Math.Max(fR, tR) - Math.Min(fR, tR));
            g = Math.Min(fG, tG) + number * (Math.Max(fG, tG) - Math.Min(fG, tG));
            b = Math.Min(fB, tB) + number * (Math.Max(fB, tB) - Math.Min(fB, tB));

            return SysMedia.Color.FromRgb((byte)r, (byte)g, (byte)b);
        }

        public static bool IsLightColor(SysMedia.Color color) => (0.299 * color.R + 0.587 * color.G + 0.114 * color.B) / 255 > 0.75;
    }
}
