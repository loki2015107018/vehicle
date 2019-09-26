using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAPP
{
    public partial class UserSearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<DAL.VehicleInfo> vehicles = BAL.AdminActivities.GetVehicleList();
            gdvResults.DataSource = vehicles;
            gdvResults.DataBind();
        }

        protected void brnSearch_Click(object sender, EventArgs e)
        {

            List<DAL.VehicleInfo> vehicles1 = BAL.UserActivities.SearchVehicles(txtSearch.Text);
            gdvResults.DataSource = vehicles1;
            gdvResults.DataBind();
            
        }

        protected void gdvResults_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GridViewRow row = gdvResults.Rows[int.Parse(e.CommandArgument.ToString())];
            int _Id = int.Parse((row.FindControl("lblId") as Label).Text);
            int _Price = int.Parse((row.FindControl("lblPrice") as Label).Text);
            
            Response.Redirect("VehicleBooking.aspx?id=" + _Id+"&amount="+ _Price);
        }
    }
}