using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.DevAV;
using DevExpress.DevAV.DevAVDbDataModel;
using DevExpress.Internal;

public partial class Products : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ASPxGridView1.DataSource = GetProducts();
        ASPxGridView1.DataBind();
    }

    public Object GetProducts()
    {
        var uow = GetUow();
        return (uow.Products.GetEntities().ToList());
    }

    protected IDevAVDbUnitOfWork GetUow()
    {
        var connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DevAVConnectionString"].ConnectionString;
        connectionString = DbEngineDetector.PatchConnectionString(connectionString); // TO use LocalDB or SQLExpress
        return new DevAVDbUnitOfWork(new DevAVDb(connectionString)); // return MOC object that can return model objects
    }

    public override string PageName
    {
        get { return "Products"; }
    }
}