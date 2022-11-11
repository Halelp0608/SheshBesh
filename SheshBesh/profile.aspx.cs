using SheshBesh.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SheshBesh
{
    public partial class profile : System.Web.UI.Page
    {
        UsersLogic ul = new UsersLogic();
        imagesLogic il = new imagesLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                DataTable dt =ul.getUser("lia");
                bigName.CssClass = "a";
                bigName.Text = "hi "+dt.Rows[0]["nickName"].ToString()+"!";
                nickname.Text = dt.Rows[0]["nickName"].ToString();
                email.Text = dt.Rows[0]["email"].ToString();
                password.Text = dt.Rows[0]["password"].ToString();
                Image1.ImageUrl = "src/"+dt.Rows[0]["src"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string url = "popUp.aspx";
            string s = "window.open('" + url + "', 'popup_window', 'width=500,height=500,left=100,top=100,resizable=yes');";
            ClientScript.RegisterStartupScript(this.GetType(), "script", s, true);
           
    
        }
    }
}