using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project5
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        string wrkno;
        connect c = new connect();
        protected void Page_Load(object sender, EventArgs e)
        {
            wrkno = Request.Cookies["workno"].Value;
        }
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            c.bundletype(txtbndlevel.Text,txtdesc.Text,wrkno,txtbndtype.Text);
        }
    }
}