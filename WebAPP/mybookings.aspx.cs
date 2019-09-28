using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAPP
{
    public partial class VehicleOperations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) getData();
        }
        public void getData()
        {
            List<DAL.BookingData> bookingdata = BAL.UserActivities.GetBookingList();
            gdvbookinglist.DataSource = bookingdata;
            gdvbookinglist.DataBind();
        }

       

        protected void gdvbookinglist_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "delete")
            {
                GridViewRow row = gdvbookinglist.Rows[int.Parse(e.CommandArgument.ToString())];
                int _Id = int.Parse((row.FindControl("lblId") as Label).Text);

                if (BAL.UserActivities.DeleteABookedVehicle(_Id))
                {
                    string _msg = string.Format("SuccessFunction('{0}')", "Payment Cancelled Successfully!");

                    Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
                }
                else
                {
                    string _msg = string.Format("ErrFunction('{0}')", "Unable to Cancel payment!");

                    Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
                }
                getData();
            }
        }
        protected void gdvbookinglist_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
                        
        }
    }
}




