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
            //System.Threading.Thread.CurrentThread.CurrentUICulture =
            //    new System.Globalization.CultureInfo(
            //        Office.LanguageSettings.get_LanguageID(
            //        Office.MsoAppLanguageID.msoLanguageIDUI));
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
            this.IESSRTools = this.Factory.CreateRibbonTab();
            this.group1 = this.Factory.CreateRibbonGroup();
            this.button3 = this.Factory.CreateRibbonButton();
            this.verticalAlignCenterToggle = this.Factory.CreateRibbonToggleButton();
            this.button2 = this.Factory.CreateRibbonButton();
            this.button1 = this.Factory.CreateRibbonButton();
            this.separator1 = this.Factory.CreateRibbonSeparator();
            this.editBox1 = this.Factory.CreateRibbonEditBox();
            this.IESSRTools.SuspendLayout();
            this.group1.SuspendLayout();
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
            this.group1.Items.Add(this.editBox1);
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
            resources.ApplyResources(this.separator1, "separator1");
            this.separator1.Name = "separator1";
            // 
            // editBox1
            // 
            resources.ApplyResources(this.editBox1, "editBox1");
            this.editBox1.Name = "editBox1";
            // 
            // IESSRToolsRibbon
            // 
            this.Name = "IESSRToolsRibbon";
            this.RibbonType = "Microsoft.Word.Document";
            this.Tabs.Add(this.IESSRTools);
            resources.ApplyResources(this, "$this");
            this.Load += new Microsoft.Office.Tools.Ribbon.RibbonUIEventHandler(this.Ribbon1_Load);
            this.IESSRTools.ResumeLayout(false);
            this.IESSRTools.PerformLayout();
            this.group1.ResumeLayout(false);
            this.group1.PerformLayout();
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
        internal Microsoft.Office.Tools.Ribbon.RibbonEditBox editBox1;
    }

    partial class ThisRibbonCollection
    {
        internal IESSRToolsRibbon Ribbon1
        {
            get { return this.GetRibbon<IESSRToolsRibbon>(); }
        }
    }
}
