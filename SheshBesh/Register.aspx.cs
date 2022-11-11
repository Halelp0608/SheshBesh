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
            if (!IsPostBack) { 
            LevelsLogic l = new LevelsLogic();
            level.DataSource = l.getLevels();
            level.DataTextField = "level";
            level.DataValueField = "code";
            level.DataBind();
            level.Items.Insert(0, "choose");
            for (int i=1;i<level.Items.Count;i++) {
                    level.Items[i].Attributes["color"] = "black";
                }
            }
            level.SelectedItem.Attributes["color"] = "black";

        }

        protected void submit_Click(object sender, EventArgs e)
        {
           UsersLogic ul = new UsersLogic();
            if (!ul.isUserExsist(nickName.Text) && nickName.Text != null)
            {
                ul.addNewUser(nickName.Text, email.Text, password.Text, Int32.Parse(level.SelectedValue));
                Response.Redirect("onlineUsers.aspx"); 
                //link to other page
            }
            else problem.Visible = true;


        }
    }
}