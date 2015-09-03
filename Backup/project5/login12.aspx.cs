using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project5
{
    public partial class login12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            connect c = new connect();
            string a=c.login(txtduser.Text, txtpass.Text);
            if (a != "null")
            {
                HttpCookie cwrk = new HttpCookie("workno");
                cwrk.Value = a;
                Response.Cookies.Add(cwrk);
               
                Response.Redirect("addproduct.aspx");
            }
            else
            {
                invalid.Text = "Invalid login";
            }
        }
    }
}