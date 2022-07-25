using System;
using System.IO;

namespace IESSRTools.Core.DotNetFramework.Office
{
    public static class Localization
    {
        private readonly static string officeLanguageCacheFolder = Path.Combine(
            Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData),
            "Hedaozi", "IESSRTools", "Office"
        );
        private readonly static string officeLanguageCachePath;

        static Localization()
        {
            officeLanguageCachePath = Path.Combine(officeLanguageCacheFolder, "Language.txt");
        }

        public static string LoadOfficeLanguageLocally()
        {
            if (File.Exists(officeLanguageCachePath))
            {
                using (var stream = new StreamReader(officeLanguageCachePath))
                {
                    return stream.ReadToEnd();
                }
            }
            return null;
        }

        public static void WriteOfficeLanguageLocally(string language)
        {
            if (!Directory.Exists(officeLanguageCacheFolder))
            {
                Directory.CreateDirectory(officeLanguageCacheFolder);
            }
            using (var stream = new StreamWriter(officeLanguageCachePath))
            {
                stream.Write(language);
            }
            return;
        }
    }
}
