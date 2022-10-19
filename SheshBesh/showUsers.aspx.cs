using SheshBesh.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SheshBesh
{
    public partial class showUsers : System.Web.UI.Page
    {
        UsersLogic ul = new UsersLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            gd1.DataSource = ul.getUsers();
            gd1.DataBind();
        }
    }
}