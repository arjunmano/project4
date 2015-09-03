using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project5
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        connect c = new connect();
        string wrkno;
        protected void Page_Load(object sender, EventArgs e)
        {
            wrkno = Request.Cookies["workno"].Value;
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
             string ch;
             ch=rblist.SelectedValue.ToString();
            Label1.Text=c.packageproduct(txtpkid.Text,txtid.Text,txttype.Text,Convert.ToDateTime(txtenddate.Text),Convert.ToInt64(txtmin.Text),Convert.ToInt64(txtmax.Text),ch,wrkno);
        }
    }
}