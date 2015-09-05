using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project5
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string wrkno;
        connect c = new connect();
        protected void Page_Load(object sender, EventArgs e)
        {

            //   wrkno = Request.Cookies["workno"].Value;
            wrkno = "a"; 
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string ch;
            ch = rblist.SelectedValue.ToString();
            c.addpackage(txtname.Text,  txtcatid.Text,ch, txtpktype.Text, txtdesc.Text,Convert.ToDateTime(txtdropdate.Text), wrkno);

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {

        }
    }
}