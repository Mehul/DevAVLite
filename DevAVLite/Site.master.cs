using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Site : System.Web.UI.MasterPage
{
    protected BasePage BasePage { get { return Page as BasePage; } }

    protected void Page_Init(object sender, EventArgs e)
    {
        SetupPage();
    }

    void SetupPage()
    {
        if (BasePage == null)
            return;

        NavigationMenu.Items.FindByName("RootItem").Image.Url = string.Format("~/Content/{0}.png", BasePage.PageName);
    }

    protected void XmlDataSource1_Init(object sender, EventArgs e)
    {
        var ds = (XmlDataSource)sender;
        ds.XPath = string.Format("Pages/{0}/Item", BasePage.PageName);
    }
}
