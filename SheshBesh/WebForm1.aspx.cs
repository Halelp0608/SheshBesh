using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SheshBesh.App_Code;

namespace SheshBesh
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        ProudactLogic pl = new ProudactLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = pl.getProudacts();
            Repeater1.DataBind();
        }
    }
}