using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SheshBesh.App_Code;

namespace SheshBesh
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            UsersLogic ul = new UsersLogic();
            if (!ul.isUserExsist(nickName.Text) && nickName.Text != null)
            {
                ul.addNewUser(nickName.Text, email.Text, password.Text, level.SelectedValue);
                //Response.Redirect('home.aspx'); 
                //link to other page
            }
            else problem.Visible = true;
            

        }
    }
}