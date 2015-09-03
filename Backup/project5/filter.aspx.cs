using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project5
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        connect c = new connect();
        string wrkno;
        protected void Page_Load(object sender, EventArgs e)
        {
            wrkno = Request.Cookies["workno"].Value;
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string ch="";
            ch = rblist.SelectedValue.ToString();
            c.filter(txtpkid.Text,txtprid.Text,ch,Convert.ToDateTime(txtenddate.Text),txtfiltervalue.Text,txtactive.Text,wrkno);
        }
    }
}