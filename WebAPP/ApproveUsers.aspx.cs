using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAPP
{
    public partial class ApproveUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) getData();
        }
        public void getData()
        {
            List<DAL.UserMaster> users = BAL.AdminActivities.GetApprovalPendingList();
            if (users.Count > 0)
            {                
                lblMsg.Text = users.Count + " Request(s) Available<br/>";
                lblMsg.Visible = true;
                lblMsg.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                lblMsg.Text = "No Request(s) Available<br/>";
                lblMsg.Visible = true;
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
            gdvPendingList.DataSource = users;
            gdvPendingList.DataBind();
        }

        protected void gdvPendingList_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName== "approve")
            {
                GridViewRow row = gdvPendingList.Rows[int.Parse(e.CommandArgument.ToString())];
                int _Id = int.Parse((row.FindControl("lblId") as Label).Text);
                BAL.AdminActivities.ApproveUsers(_Id, "admin", true);
                getData();
                string _msg = string.Format("SuccessFunction('{0}')", "User Request Approved Successfully");

                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);

            }
            else if(e.CommandName== "reject")
            {
                GridViewRow row = gdvPendingList.Rows[int.Parse(e.CommandArgument.ToString())];
                int _Id = int.Parse((row.FindControl("lblId") as Label).Text);
                BAL.AdminActivities.ApproveUsers(_Id, "admin", false);
                getData();
                string _msg = string.Format("SuccessFunction('{0}')", "User Request Rejected Successfully");

                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
            }
        }
    }
}