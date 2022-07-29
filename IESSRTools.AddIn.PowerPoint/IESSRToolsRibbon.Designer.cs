namespace IESSRTools.AddIn.PowerPoint
{
    partial class IESSRToolsRibbon : Microsoft.Office.Tools.Ribbon.RibbonBase
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        public IESSRToolsRibbon()
            : base(Globals.Factory.GetRibbonFactory())
        {
            InitializeComponent();
        }

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.IESSRTools = this.Factory.CreateRibbonTab();
            this.group1 = this.Factory.CreateRibbonGroup();
            this.splitButton1 = this.Factory.CreateRibbonSplitButton();
            this.button1 = this.Factory.CreateRibbonButton();
            this.button2 = this.Factory.CreateRibbonButton();
            this.IESSRTools.SuspendLayout();
            this.group1.SuspendLayout();
            this.SuspendLayout();
            // 
            // IESSRTools
            // 
            this.IESSRTools.Groups.Add(this.group1);
            this.IESSRTools.Label = "IESSR Tools";
            this.IESSRTools.Name = "IESSRTools";
            // 
            // group1
            // 
            this.group1.Items.Add(this.splitButton1);
            this.group1.Label = "Design";
            this.group1.Name = "group1";
            // 
            // splitButton1
            // 
            this.splitButton1.ControlSize = Microsoft.Office.Core.RibbonControlSize.RibbonControlSizeLarge;
            this.splitButton1.Items.Add(this.button1);
            this.splitButton1.Items.Add(this.button2);
            this.splitButton1.Label = "Acrylic";
            this.splitButton1.Name = "splitButton1";
            this.splitButton1.OfficeImageId = "PictureSharpenSoftenGallery";
            this.splitButton1.Click += new Microsoft.Office.Tools.Ribbon.RibbonControlEventHandler(this.GenerateAcrylicEffect);
            // 
            // button1
            // 
            this.button1.Label = "Parameters";
            this.button1.Name = "button1";
            this.button1.OfficeImageId = "PictureEffectsMenu";
            this.button1.ShowImage = true;
            this.button1.Click += new Microsoft.Office.Tools.Ribbon.RibbonControlEventHandler(this.SetParameters);
            // 
            // button2
            // 
            this.button2.Label = "Crop";
            this.button2.Name = "button2";
            this.button2.OfficeImageId = "PictureFitCrop";
            this.button2.ShowImage = true;
            // 
            // IESSRToolsRibbon
            // 
            this.Name = "IESSRToolsRibbon";
            this.RibbonType = "Microsoft.PowerPoint.Presentation";
            this.Tabs.Add(this.IESSRTools);
            this.Load += new Microsoft.Office.Tools.Ribbon.RibbonUIEventHandler(this.IESSRToolsRibbon_Load);
            this.IESSRTools.ResumeLayout(false);
            this.IESSRTools.PerformLayout();
            this.group1.ResumeLayout(false);
            this.group1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        internal Microsoft.Office.Tools.Ribbon.RibbonTab IESSRTools;
        internal Microsoft.Office.Tools.Ribbon.RibbonGroup group1;
        internal Microsoft.Office.Tools.Ribbon.RibbonSplitButton splitButton1;
        internal Microsoft.Office.Tools.Ribbon.RibbonButton button1;
        internal Microsoft.Office.Tools.Ribbon.RibbonButton button2;
    }

    partial class ThisRibbonCollection
    {
        internal IESSRToolsRibbon IESSRToolsRibbon
        {
            get { return this.GetRibbon<IESSRToolsRibbon>(); }
        }
    }
}
