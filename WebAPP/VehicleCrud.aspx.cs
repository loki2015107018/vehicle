using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAPP
{
    public partial class VehicleCrud : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) getData();
        }
        public void getData()
        {
            List<DAL.VehicleInfo> vehicles= BAL.AdminActivities.GetVehicleList();
            gdvVehicleList.DataSource = vehicles;
            gdvVehicleList.DataBind();
        }

        protected void gdvVehicleList_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "edit")
            {
                GridViewRow row = gdvVehicleList.Rows[int.Parse(e.CommandArgument.ToString())];
                int _Id = int.Parse((row.FindControl("lblId") as Label).Text);
                Response.Redirect("AddVehicle.aspx?id=" + _Id);

            }
            else if(e.CommandName == "delete")
            {
                GridViewRow row = gdvVehicleList.Rows[int.Parse(e.CommandArgument.ToString())];
                int _Id = int.Parse((row.FindControl("lblId") as Label).Text);

                if (BAL.AdminActivities.DeleteAVehicle(_Id))
                {
                    string _msg = string.Format("SuccessFunction('{0}')", "Vehicle Deleted Successfully!");

                    Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
                }
                else
                {
                    string _msg = string.Format("ErrFunction('{0}')", "Unable to Delete Vehicle data!");

                    Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
                }
                getData();
            }
        }

        protected void gdvVehicleList_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }
    }
}