using Microsoft.Office.Interop.Word;

namespace IESSRTools.Core.DotNetFramework.Office.Word
{
    public static class Align
    {
        public static void SetDecimalAlign(Selection wdSelection, float positionCh)
        {
            Application wdApp = wdSelection.Application;
            wdSelection.ParagraphFormat.TabStops.ClearAll();
            wdSelection.ParagraphFormat.TabStops.Add(
                Position: wdApp.CentimetersToPoints(0.37F * positionCh),
                Alignment: WdTabAlignment.wdAlignTabDecimal,
                Leader: WdTabLeader.wdTabLeaderSpaces
            );
            return;
        }
    }
}
