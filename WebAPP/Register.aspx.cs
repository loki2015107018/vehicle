using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

namespace WebAPP
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadData();
            }
        }
        public void LoadData()
        {
            ddlRole.DataSource= BAL.Accounts.GetUserRoles();
            ddlRole.DataTextField = "RoleDescription";
            ddlRole.DataValueField = "RoleID";
            ddlRole.DataBind();
            ddlRole.Items.Insert(0, new ListItem { Value = "", Text = "--select--" });

            ddlBranch.DataSource = BAL.Accounts.GetBranches();
            ddlBranch.DataTextField = "BranchName";
            ddlBranch.DataValueField = "BranchCode";
            ddlBranch.DataBind();
            ddlBranch.Items.Insert(0, new ListItem { Value = "", Text = "--select--" });
        }

        [System.Web.Services.WebMethod]
        public static string checkUserName(string name)
        {
            if (!BAL.Accounts.CheckUserIdExistance(name))
            {
                return "Available";
            }
            else
            {
                return "Not Available";
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            UserMaster userMaster = new UserMaster
            {
                Age=int.Parse(txtAge.Text),
                BranchId=int.Parse(ddlBranch.SelectedItem.Value),
                ContactNumber=txtMobile.Text,
                CreatedBy="System",CreatedOn=DateTime.Now,
                EMail=txtEmail.Text,FirstName=txtFirstName.Text,
                Gender=rbtnGender.SelectedItem.Value,
                LastName=txtLastName.Text,Password=txtPassword.Text,
                RoleId=int.Parse(ddlRole.SelectedItem.Value),
                UserName=txtUserName.Text
            };
            if(BAL.Accounts.Registration(userMaster))
            {
                string _msg = string.Format("SuccessFunction('{0}')", "Registered Successfully");

                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
            }
            else
            {
                string _msg = string.Format("ErrFunction('{0}')", "Unable to Submit");

                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
            }

        }
    }
}