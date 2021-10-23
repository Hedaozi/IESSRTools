using System;
using System.Text;

namespace IESSRTools.Core.Test
{
    class Program
    {
        static void Main(string[] args)
        {
            Utils.Net.VisitHtml(Literature.FollowJournals.PubMed("American Sociological Review"));
            Utils.Net.VisitHtml(Literature.FollowJournals.PubMed("Science"));
            Utils.Net.VisitHtml(Literature.FollowJournals.Google("American Sociological Review"));
            Utils.Net.VisitHtml(Literature.FollowJournals.Google("Science"));
        }
    }
}
