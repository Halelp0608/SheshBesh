using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using SheshBesh.App_Code;

namespace SheshBesh
{
    public partial class popUp : System.Web.UI.Page
    {
        private string url;

        imagesLogic il = new imagesLogic();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { 
            Repeater1.DataSource = il.getImages();
            Repeater1.DataBind();}
        }

        protected void src_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton b = sender as ImageButton;
            RepeaterItem item = b.NamingContainer as RepeaterItem;
            //imgCode = Int32.Parse(b.CommandName);
            url = (item.FindControl("src") as ImageButton).ImageUrl;
            SendKeys.SendWait(url);




        }
    }
}