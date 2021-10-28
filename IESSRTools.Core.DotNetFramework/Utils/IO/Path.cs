using System;
using System.Collections.Generic;
using System.Linq;
using System.IO;
using System.Threading.Tasks;

namespace IESSRTools.Core.DotNetFramework.Utils.IO
{
    public static class Path
    {
        public static List<string> GetFilesByExt(string path, string extName)
        {
            string[] allFiles = Directory.GetFiles(path);
            List<string> files = new List<string>();
            foreach (string file in allFiles)
            {
                string thisExt = System.IO.Path.GetExtension(file).ToLower();
                if (thisExt == extName.ToLower())
                {
                    files.Add(file);
                }
            }
            return files;
        }
    }
}
