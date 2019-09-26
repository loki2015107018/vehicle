using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAPP
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string _msg = string.Format("SuccessFunction('{0}')", "payment Successfull!");

            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
        }
    }
}