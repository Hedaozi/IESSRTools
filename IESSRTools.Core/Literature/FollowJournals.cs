namespace IESSRTools.Core.Literature
{
    public class FollowJournals
    {
        private static readonly string PubMedPrefix = "https://pubmed.ncbi.nlm.nih.gov/?term=%22";
        private static readonly string PubMedSuffix = "%22%5BJournal%5D&sort=date";

        private static readonly string GooglePrefix = "https://scholar.google.com/scholar?&q=source%3A%22";
        private static readonly string GoogleSuffix = "%22&scisbd=1";

        private static readonly string BaiduPrefix = "https://xueshu.baidu.com/s?wd=journal%3A%28";
        private static readonly string BaiduSuffix = "%29&sort=sc_time";

        public static string PubMed(string journal) => PubMedPrefix + journal.Replace(" ", "+") + PubMedSuffix;

        public static string Google(string journal) => GooglePrefix + journal.Replace(" ", "+") + GoogleSuffix;

        public static string Baidu(string journal) => BaiduPrefix + journal.Replace(" ", "%20") + BaiduSuffix;
    }
}
