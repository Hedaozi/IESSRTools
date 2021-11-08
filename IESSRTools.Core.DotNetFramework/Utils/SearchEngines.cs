using System.Collections.Generic;
using System.Linq;
using JiebaNet.Segmenter;

namespace IESSRTools.Core.DotNetFramework.Utils
{
    public static class SearchEngines
    {
        static double bothW = 2;
        static double thatRemainW = 1;
        static double thisRemainW = 0.2;

        public static string[] SegmentForSearch(this string sourceString) => new List<string>(new JiebaSegmenter().CutForSearch(sourceString)).ToArray();

        public static double SimilarityWith(this string thisStr, string str)
        {
            string[] thisParts = thisStr.SegmentForSearch();
            string[] thatParts = str.Segment(cutAll: false);

            int both = thisParts.Intersect(thatParts).Count();
            int thatRemain = thatParts.Length - both;
            int thisRemain = thisParts.Length - both;

            return bothW * both / (thatRemainW * thatRemain + bothW * both + thisRemainW * thisRemain);
        }

        public static double SimilarityWithByWord(this string thisStr, string str)
        {
            char[] thisParts = thisStr.ToArray();
            char[] thatParts = str.ToArray();

            int both = thisParts.Intersect(thatParts).Count();
            int thatRemain = thatParts.Length - both;
            int thisRemain = thisParts.Length - both;

            return bothW * both / (thatRemainW * thatRemain + bothW * both + thisRemainW * thisRemain);
        }
    }
}
