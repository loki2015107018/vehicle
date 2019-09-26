using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAPP
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session.Clear();

            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {


                List<DAL.UserMaster> users = BAL.Accounts.LoginValidate(txtUserName.Text, txtPassword.Text);
            if (users.Count != 0)
            {
                Session["UserId"] = users[0].UserName;
                Session["FullName"] = users[0].FirstName + " " + users[0].LastName;
                Session["Role"] = users[0].RoleId;
                Session["IsActive"] = users[0].IsActive;
                if (Session["IsActive"]!= null)
                {
                    if (Session["IsActive"].Equals(true))
                    {
                        Response.Redirect("~/Home.aspx");
                    }

                    else
                    {
                        string _msg = string.Format("ErrFunction('{0}')", "Account is inactive please contact admin");
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
                    }


                }
                else
                {
                    string _msg = string.Format("ErrFunction('{0}')", "Account is inactive please contact admin");
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
                }
            }

            else
            {
                string _msg = string.Format("ErrFunction('{0}')", "Incorrect UserId/Password");

                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);

            }
           }
                                        

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Register.aspx");
        }
    }
}