using System.Collections.Generic;
using System.Linq;
using JiebaNet.Segmenter;

namespace IESSRTools.Core.DotNetFramework.Utils
{
    public static class Text
    {
        static double Kq = 2;
        static double Kr = 1;
        static double Ks = 1;

        public static double SimilarityWith(this string thisStr, string str, bool byWord = false)
        {
            int q, s, r;

            if (!byWord)
            {
                string[] ss = thisStr.Segment();
                string[] st = str.Segment();

                q = ss.Intersect(st).Count();
                s = ss.Length - q;
                r = st.Length - q;
            }

            else
            {
                char[] ss = thisStr.ToCharArray();
                char[] st = str.ToCharArray();

                q = ss.Intersect(st).Count();
                s = ss.Length - q;
                r = st.Length - q;
            }

            return Kq * q / (Kq * q + Kr * r + Ks * s);
        }

        public static string[] Segment(this string sourceString, bool cutAll = true) => new List<string>(new JiebaSegmenter().Cut(sourceString, cutAll: cutAll)).ToArray();
    }
}
