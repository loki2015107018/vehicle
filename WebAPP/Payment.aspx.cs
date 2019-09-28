using DAL;
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
            if(radiobutton.SelectedValue== "Credit Card" || radiobutton.SelectedValue== "debit Card"|| radiobutton.SelectedValue == "UPI"|| radiobutton.SelectedValue=="COD" || radiobutton.SelectedValue=="Phonepay")
                {
                string _msg = string.Format("SuccessFunction('{0}')", "payment Successfull!");

                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
                Response.Redirect("~/mybookings.aspx");
            }
            else
            {
                string _msg = string.Format("ErrFunction('{0}')", "Select One payment");

                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
            }
            
        }
    }
}