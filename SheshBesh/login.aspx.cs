using SheshBesh.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SheshBesh
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sighnin_Click(object sender, EventArgs e)
        {
            UsersLogic ul = new UsersLogic();
            if (ul.isDetailsCorrect(nickName.Text, password.Text))
            {
                Response.Redirect("onlineUsers.aspx");

            }
            else
            {
                problem.Visible = true;

            }
        }
    }
}