using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAPP
{
    public partial class VehicleBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                hidId.Value = Request.QueryString["id"].ToString();
                Amount.Text = Request.QueryString["amount"].ToString();
                BookingFromDate.Attributes["min"] = DateTime.Now.ToString("yyyy-MM-dd");
                BookingToDate.Attributes["min"] = DateTime.Now.ToString("yyyy-MM-dd");
                BookingToDate.Attributes["max"] = DateTime.Now.ToString("2019-12-31");
            }
        }


        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            try
            {

                DateTime fromdate = DateTime.Parse(BookingFromDate.Text);
                DateTime todate = DateTime.Parse(BookingToDate.Text);
                double TotalDays = (todate - fromdate).TotalDays;

                BookingData bd = new BookingData
                {
                    BookingDate = DateTime.Now,
                    BookedfromDate = fromdate,
                    BookedToDate = todate,
                    VehicleId = int.Parse(Request.QueryString["id"]),
                    TotalNoOfDays = int.Parse(TotalDays.ToString()),
                    Amount = int.Parse(Request.QueryString["Amount"]) * int.Parse(TotalDays.ToString())

                };
                if (BAL.UserActivities.addBookingDetails(bd))
                {
                    Response.Redirect("~/Payment.aspx");
                }
            }

            catch (Exception ex)
            {

            }
        }
    }
}
    
