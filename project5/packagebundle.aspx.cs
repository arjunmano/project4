using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project5
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        connect c = new connect();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            c.packagebundle(txtpkid.Text, txtbundleid.Text);
        }
    }
}