namespace IESSRTools.Core.Literature
{
    public class FollowJournals
    {
        private static readonly string PubMedPrefix = "https://pubmed.ncbi.nlm.nih.gov/?term=%22";
        private static readonly string PubMedSuffix = "%22%5BJournal%5D&sort=date";

        private static readonly string GooglePrefix = "https://scholar.google.com/scholar?&q=source%3A%22";
        private static readonly string GoogleSuffix = "%22&scisbd=1";

        public static string PubMed(string journal) => PubMedPrefix + journal.Replace(" ", "+") + PubMedSuffix;

        public static string Google(string journal) => GooglePrefix + journal.Replace(" ", "+") + GoogleSuffix;
    }
}
