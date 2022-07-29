using Microsoft.Office.Interop.PowerPoint;
using MsOffice = Microsoft.Office.Core;
using IESSRTools.Core.DotNetFramework.Utils;
using System;
using System.IO;
using YamlDotNet.Serialization;
using YamlDotNet.Serialization.NamingConventions;

namespace IESSRTools.Core.DotNetFramework.Office.PowerPoint
{
    public static class Acrylic
    {
        private static readonly int MaskColorLight = 255 * 256 * 256 + 255 * 256 + 255;
        private static readonly int MaskColorDark = 38 * 256 * 256 + 38 * 256 + 38;

        public static void Generate(Shape pic, AcrylicFormat format)
        {
            var ppApp = pic.Application as Application;
            var slide = ppApp.ActiveWindow.Selection.SlideRange[1];
            var mask = slide.Shapes.AddShape(
                MsOffice.MsoAutoShapeType.msoShapeRectangle,
                pic.Left, pic.Top, pic.Width, pic.Height
            );

            var picName = pic.Name;
            var maskName = mask.Name;

            pic.With(p => {
                p.Name = "Blur";
                p.Shadow.With(s => {
                    s.Visible = MsOffice.MsoTriState.msoTrue;
                    s.ForeColor.RGB = 0;
                    s.Transparency = format.ShadowTransparency;
                    s.Size = format.ShadowSize;
                    s.Blur = format.ShadowBlur;
                    s.OffsetX = format.ShadowOffsetX;
                    s.OffsetY = format.ShadowOffsetY;
                });
                p.Fill.PictureEffects.Insert(MsOffice.MsoPictureEffectType.msoEffectBlur).
                    EffectParameters[1].Value = format.BlurEffectRadius;
            });

            mask.With(m => {
                m.Name = "Mask";
                m.Fill.With(f => {
                    f.ForeColor.RGB = format.LightTheme ? MaskColorLight : MaskColorDark;
                    f.Transparency = format.MaskTransparency;
                });
                m.Line.With(l => {
                    l.Visible = MsOffice.MsoTriState.msoFalse;
                });
            });

            slide.Shapes.Range(new string[] { "Blur", "Mask" }).Group();

            mask.Name = maskName;
            pic.Name = picName;
        }
    }

    public class AcrylicFormat
    {
        public float ShadowTransparency { get; set; }
        public float ShadowSize { get; set; }
        public float ShadowBlur { get; set; }
        public float ShadowOffsetX { get; set; }
        public float ShadowOffsetY { get; set; }
        public float BlurEffectRadius { get; set; }
        public bool LightTheme { get; set; }
        public float MaskTransparency { get; set; }

        private readonly static string acrylicFormatFolderPath = Path.Combine(
            Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData),
            "Hedaozi", "IESSRTools", "Office"
        );
        private readonly static string acrrylicFormatFilePath;
        private readonly static IDeserializer deserializer = new DeserializerBuilder()
            .WithNamingConvention(PascalCaseNamingConvention.Instance)
            .Build();
        private readonly static ISerializer serializer = new SerializerBuilder()
            .WithNamingConvention(PascalCaseNamingConvention.Instance)
            .Build();

        static AcrylicFormat()
        {
            acrrylicFormatFilePath = Path.Combine(acrylicFormatFolderPath, "AycrylicFormat.yaml");
        }

        public static AcrylicFormat Default()
        {
            return new AcrylicFormat
            {
                ShadowTransparency = 0.65F,
                ShadowSize = 101,
                ShadowBlur = 12,
                ShadowOffsetX = 0,
                ShadowOffsetY = 0,
                BlurEffectRadius = 77F,
                LightTheme = true,
                MaskTransparency = 0.44F
            };
        }

        public static AcrylicFormat Load()
        {
            if (File.Exists(acrrylicFormatFilePath))
            {
                using (var stream = new StreamReader(acrrylicFormatFilePath))
                {
                    var yaml = stream.ReadToEnd();
                    return deserializer.Deserialize<AcrylicFormat>(yaml);
                }
            }
            var acrylicFormat = Default();
            Save(acrylicFormat);
            return acrylicFormat;
        }

        public static void Save(AcrylicFormat acrylicFormat)
        {
            if (!Directory.Exists(acrylicFormatFolderPath))
            {
                Directory.CreateDirectory(acrylicFormatFolderPath);
            }
            using (var stream = new StreamWriter(acrrylicFormatFilePath))
            {
                serializer.Serialize(stream, acrylicFormat);
            }
            return;
        }
    }
}
