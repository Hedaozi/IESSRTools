using IESSRTools.Core.DotNetFramework.Office;

namespace IESSRTools.AddIn.Word
{
    partial class IESSRToolsRibbon : Microsoft.Office.Tools.Ribbon.RibbonBase
    {
        /// <summary>
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        public IESSRToolsRibbon()
            : base(Globals.Factory.GetRibbonFactory())
        {
            var language = Localization.LoadOfficeLanguageLocally();
            if (language != null && language.StartsWith("zh-CN"))
            {
                System.Threading.Thread.CurrentThread.CurrentUICulture =
                    new System.Globalization.CultureInfo("zh-CHS");
            }
            else
            {
                System.Threading.Thread.CurrentThread.CurrentUICulture =
                    new System.Globalization.CultureInfo("en");
            }

            InitializeComponent();
        }

        /// <summary> 
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region 组件设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要修改
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(IESSRToolsRibbon));
            Microsoft.Office.Tools.Ribbon.RibbonDropDownItem ribbonDropDownItemImpl1 = this.Factory.CreateRibbonDropDownItem();
            Microsoft.Office.Tools.Ribbon.RibbonDropDownItem ribbonDropDownItemImpl2 = this.Factory.CreateRibbonDropDownItem();
            Microsoft.Office.Tools.Ribbon.RibbonDropDownItem ribbonDropDownItemImpl3 = this.Factory.CreateRibbonDropDownItem();
            Microsoft.Office.Tools.Ribbon.RibbonDropDownItem ribbonDropDownItemImpl4 = this.Factory.CreateRibbonDropDownItem();
            Microsoft.Office.Tools.Ribbon.RibbonDropDownItem ribbonDropDownItemImpl5 = this.Factory.CreateRibbonDropDownItem();
            Microsoft.Office.Tools.Ribbon.RibbonDropDownItem ribbonDropDownItemImpl6 = this.Factory.CreateRibbonDropDownItem();
            Microsoft.Office.Tools.Ribbon.RibbonDropDownItem ribbonDropDownItemImpl7 = this.Factory.CreateRibbonDropDownItem();
            Microsoft.Office.Tools.Ribbon.RibbonDropDownItem ribbonDropDownItemImpl8 = this.Factory.CreateRibbonDropDownItem();
            Microsoft.Office.Tools.Ribbon.RibbonDropDownItem ribbonDropDownItemImpl9 = this.Factory.CreateRibbonDropDownItem();
            Microsoft.Office.Tools.Ribbon.RibbonDropDownItem ribbonDropDownItemImpl10 = this.Factory.CreateRibbonDropDownItem();
            Microsoft.Office.Tools.Ribbon.RibbonDropDownItem ribbonDropDownItemImpl11 = this.Factory.CreateRibbonDropDownItem();
            Microsoft.Office.Tools.Ribbon.RibbonDropDownItem ribbonDropDownItemImpl12 = this.Factory.CreateRibbonDropDownItem();
            Microsoft.Office.Tools.Ribbon.RibbonDropDownItem ribbonDropDownItemImpl13 = this.Factory.CreateRibbonDropDownItem();
            this.IESSRTools = this.Factory.CreateRibbonTab();
            this.group1 = this.Factory.CreateRibbonGroup();
            this.button3 = this.Factory.CreateRibbonButton();
            this.verticalAlignCenterToggle = this.Factory.CreateRibbonToggleButton();
            this.button2 = this.Factory.CreateRibbonButton();
            this.button1 = this.Factory.CreateRibbonButton();
            this.separator1 = this.Factory.CreateRibbonSeparator();
            this.decimalAlignPosition = this.Factory.CreateRibbonComboBox();
            this.buttonGroup1 = this.Factory.CreateRibbonButtonGroup();
            this.button4 = this.Factory.CreateRibbonButton();
            this.button5 = this.Factory.CreateRibbonButton();
            this.button6 = this.Factory.CreateRibbonButton();
            this.button7 = this.Factory.CreateRibbonButton();
            this.IESSRTools.SuspendLayout();
            this.group1.SuspendLayout();
            this.buttonGroup1.SuspendLayout();
            this.SuspendLayout();
            // 
            // IESSRTools
            // 
            this.IESSRTools.Groups.Add(this.group1);
            resources.ApplyResources(this.IESSRTools, "IESSRTools");
            this.IESSRTools.Name = "IESSRTools";
            // 
            // group1
            // 
            this.group1.Items.Add(this.button3);
            this.group1.Items.Add(this.verticalAlignCenterToggle);
            this.group1.Items.Add(this.button2);
            this.group1.Items.Add(this.button1);
            this.group1.Items.Add(this.separator1);
            this.group1.Items.Add(this.decimalAlignPosition);
            this.group1.Items.Add(this.buttonGroup1);
            resources.ApplyResources(this.group1, "group1");
            this.group1.Name = "group1";
            // 
            // button3
            // 
            this.button3.ControlSize = Microsoft.Office.Core.RibbonControlSize.RibbonControlSizeLarge;
            resources.ApplyResources(this.button3, "button3");
            this.button3.Name = "button3";
            this.button3.OfficeImageId = "CreateQueryInDesignView";
            this.button3.ShowImage = true;
            this.button3.Click += new Microsoft.Office.Tools.Ribbon.RibbonControlEventHandler(this.FormatThreeLineTable);
            // 
            // verticalAlignCenterToggle
            // 
            this.verticalAlignCenterToggle.Checked = true;
            resources.ApplyResources(this.verticalAlignCenterToggle, "verticalAlignCenterToggle");
            this.verticalAlignCenterToggle.Name = "verticalAlignCenterToggle";
            this.verticalAlignCenterToggle.OfficeImageId = "TableCellAlignCenterVertically";
            this.verticalAlignCenterToggle.ShowImage = true;
            // 
            // button2
            // 
            resources.ApplyResources(this.button2, "button2");
            this.button2.Name = "button2";
            this.button2.OfficeImageId = "TableStyleRowHeaders";
            this.button2.ShowImage = true;
            this.button2.Click += new Microsoft.Office.Tools.Ribbon.RibbonControlEventHandler(this.ResetTableHeaders);
            // 
            // button1
            // 
            resources.ApplyResources(this.button1, "button1");
            this.button1.Name = "button1";
            this.button1.OfficeImageId = "TableAutoFormat";
            this.button1.ShowImage = true;
            this.button1.Click += new Microsoft.Office.Tools.Ribbon.RibbonControlEventHandler(this.FormatAllTable);
            // 
            // separator1
            // 
            this.separator1.Name = "separator1";
            // 
            // decimalAlignPosition
            // 
            resources.ApplyResources(ribbonDropDownItemImpl1, "ribbonDropDownItemImpl1");
            resources.ApplyResources(ribbonDropDownItemImpl2, "ribbonDropDownItemImpl2");
            resources.ApplyResources(ribbonDropDownItemImpl3, "ribbonDropDownItemImpl3");
            resources.ApplyResources(ribbonDropDownItemImpl4, "ribbonDropDownItemImpl4");
            resources.ApplyResources(ribbonDropDownItemImpl5, "ribbonDropDownItemImpl5");
            resources.ApplyResources(ribbonDropDownItemImpl6, "ribbonDropDownItemImpl6");
            resources.ApplyResources(ribbonDropDownItemImpl7, "ribbonDropDownItemImpl7");
            resources.ApplyResources(ribbonDropDownItemImpl8, "ribbonDropDownItemImpl8");
            resources.ApplyResources(ribbonDropDownItemImpl9, "ribbonDropDownItemImpl9");
            resources.ApplyResources(ribbonDropDownItemImpl10, "ribbonDropDownItemImpl10");
            resources.ApplyResources(ribbonDropDownItemImpl11, "ribbonDropDownItemImpl11");
            resources.ApplyResources(ribbonDropDownItemImpl12, "ribbonDropDownItemImpl12");
            resources.ApplyResources(ribbonDropDownItemImpl13, "ribbonDropDownItemImpl13");
            this.decimalAlignPosition.Items.Add(ribbonDropDownItemImpl1);
            this.decimalAlignPosition.Items.Add(ribbonDropDownItemImpl2);
            this.decimalAlignPosition.Items.Add(ribbonDropDownItemImpl3);
            this.decimalAlignPosition.Items.Add(ribbonDropDownItemImpl4);
            this.decimalAlignPosition.Items.Add(ribbonDropDownItemImpl5);
            this.decimalAlignPosition.Items.Add(ribbonDropDownItemImpl6);
            this.decimalAlignPosition.Items.Add(ribbonDropDownItemImpl7);
            this.decimalAlignPosition.Items.Add(ribbonDropDownItemImpl8);
            this.decimalAlignPosition.Items.Add(ribbonDropDownItemImpl9);
            this.decimalAlignPosition.Items.Add(ribbonDropDownItemImpl10);
            this.decimalAlignPosition.Items.Add(ribbonDropDownItemImpl11);
            this.decimalAlignPosition.Items.Add(ribbonDropDownItemImpl12);
            this.decimalAlignPosition.Items.Add(ribbonDropDownItemImpl13);
            resources.ApplyResources(this.decimalAlignPosition, "decimalAlignPosition");
            this.decimalAlignPosition.Name = "decimalAlignPosition";
            this.decimalAlignPosition.ShowItemImage = false;
            this.decimalAlignPosition.ShowLabel = false;
            this.decimalAlignPosition.TextChanged += new Microsoft.Office.Tools.Ribbon.RibbonControlEventHandler(this.JustifyDecimalAlign);
            // 
            // buttonGroup1
            // 
            this.buttonGroup1.Items.Add(this.button4);
            this.buttonGroup1.Items.Add(this.button5);
            this.buttonGroup1.Items.Add(this.button6);
            this.buttonGroup1.Items.Add(this.button7);
            this.buttonGroup1.Name = "buttonGroup1";
            // 
            // button4
            // 
            resources.ApplyResources(this.button4, "button4");
            this.button4.Name = "button4";
            this.button4.OfficeImageId = "AlignJustifyHigh";
            this.button4.ShowImage = true;
            this.button4.ShowLabel = false;
            this.button4.Click += new Microsoft.Office.Tools.Ribbon.RibbonControlEventHandler(this.DecreaseAlign);
            // 
            // button5
            // 
            resources.ApplyResources(this.button5, "button5");
            this.button5.Name = "button5";
            this.button5.OfficeImageId = "AlignJustifyLow";
            this.button5.ShowImage = true;
            this.button5.ShowLabel = false;
            this.button5.Click += new Microsoft.Office.Tools.Ribbon.RibbonControlEventHandler(this.IncreaseAlign);
            // 
            // button6
            // 
            resources.ApplyResources(this.button6, "button6");
            this.button6.Name = "button6";
            this.button6.OfficeImageId = "AlignLeft";
            this.button6.ShowImage = true;
            this.button6.ShowLabel = false;
            this.button6.Click += new Microsoft.Office.Tools.Ribbon.RibbonControlEventHandler(this.RemoveAlign);
            // 
            // button7
            // 
            resources.ApplyResources(this.button7, "button7");
            this.button7.Name = "button7";
            this.button7.OfficeImageId = "AlignCenter";
            this.button7.ShowImage = true;
            this.button7.ShowLabel = false;
            this.button7.Click += new Microsoft.Office.Tools.Ribbon.RibbonControlEventHandler(this.ApplyAlign);
            // 
            // IESSRToolsRibbon
            // 
            this.Name = "IESSRToolsRibbon";
            this.RibbonType = "Microsoft.Word.Document";
            this.Tabs.Add(this.IESSRTools);
            this.Load += new Microsoft.Office.Tools.Ribbon.RibbonUIEventHandler(this.Ribbon1_Load);
            this.IESSRTools.ResumeLayout(false);
            this.IESSRTools.PerformLayout();
            this.group1.ResumeLayout(false);
            this.group1.PerformLayout();
            this.buttonGroup1.ResumeLayout(false);
            this.buttonGroup1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion
        internal Microsoft.Office.Tools.Ribbon.RibbonGroup group1;
        internal Microsoft.Office.Tools.Ribbon.RibbonTab IESSRTools;
        internal Microsoft.Office.Tools.Ribbon.RibbonToggleButton verticalAlignCenterToggle;
        internal Microsoft.Office.Tools.Ribbon.RibbonButton button1;
        internal Microsoft.Office.Tools.Ribbon.RibbonButton button2;
        internal Microsoft.Office.Tools.Ribbon.RibbonButton button3;
        internal Microsoft.Office.Tools.Ribbon.RibbonSeparator separator1;
        internal Microsoft.Office.Tools.Ribbon.RibbonComboBox decimalAlignPosition;
        internal Microsoft.Office.Tools.Ribbon.RibbonButtonGroup buttonGroup1;
        internal Microsoft.Office.Tools.Ribbon.RibbonButton button4;
        internal Microsoft.Office.Tools.Ribbon.RibbonButton button5;
        internal Microsoft.Office.Tools.Ribbon.RibbonButton button6;
        internal Microsoft.Office.Tools.Ribbon.RibbonButton button7;
    }

    partial class ThisRibbonCollection
    {
        internal IESSRToolsRibbon Ribbon1
        {
            get { return this.GetRibbon<IESSRToolsRibbon>(); }
        }
    }
}
