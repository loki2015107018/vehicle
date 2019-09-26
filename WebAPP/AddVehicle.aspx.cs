using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;

namespace WebAPP
{
    public partial class AddVehicle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getData();
                try
                {
                    if(Request.QueryString["Id"]!=null)
                    {
                        hidId.Value = Request.QueryString["Id"];
                        VehicleInfo vehicle= BAL.AdminActivities.GetVehicleDetailsById(int.Parse(hidId.Value));
                        VehicleNumber.Text = vehicle.VehicleNumber;
                        ddlBranch.SelectedValue = vehicle.BranchCode.ToString();
                        ddlVehicleType.SelectedValue = vehicle.VehicleType;
                        txtInsuranceExpiryDate.Text = vehicle.InsuranceExpiryDate.Value.ToString("MM/dd/yyyy");
                        txtLastServicedDate.Text = vehicle.LastServicedDate.Value.ToString("MM/dd/yyyy");
                        txtModelnYear.Text = vehicle.Model + "-" + vehicle.Year;
                        txtPriceperDay.Text = vehicle.PriceperDay.ToString();
                        txtServiceDueDate.Text = vehicle.ServiceDueDate.Value.ToString("MM/dd/yyyy");
                    }
                }
                catch
                {

                }
                finally
                {
                    
                }
            }
           
        }
        public void getData()
        {
            ddlBranch.DataSource = BAL.Accounts.GetBranches();
            ddlBranch.DataTextField = "BranchName";
            ddlBranch.DataValueField = "BranchCode";
            ddlBranch.DataBind();
            ddlBranch.Items.Insert(0, new ListItem { Value = "", Text = "--select--" });
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            string[] yearModel =txtModelnYear.Text!=null? txtModelnYear.Text.Split('-'):new string[] { "",""};
            int yy = 0;
            VehicleInfo vehicleInfo = new VehicleInfo
            {
                BranchCode = int.Parse(ddlBranch.SelectedItem.Value),
                CreatedBy = "Admin", CreatedOn = DateTime.Now,
                InsuranceExpiryDate = DateTime.ParseExact(txtInsuranceExpiryDate.Text,"MM/dd/yyyy",null).Date,
                IsActive = true, LastServicedDate = DateTime.ParseExact(txtLastServicedDate.Text, "MM/dd/yyyy", null).Date,
                Model = yearModel[0],
                Year = int.TryParse(yearModel[1], out yy) ? yy : 0,
                PriceperDay =int.Parse(txtPriceperDay.Text),
                ServiceDueDate=DateTime.ParseExact(txtServiceDueDate.Text, "MM/dd/yyyy", null).Date,
                VehicleNumber=VehicleNumber.Text,VehicleType=ddlVehicleType.Text
            };

            try
            {
                if (hidId.Value != null && hidId.Value!="")
                {
                    vehicleInfo.VehicleId = int.Parse(hidId.Value);
                    if (BAL.AdminActivities.UpdateVehicleDetails(vehicleInfo))
                    {
                        string _msg = string.Format("SuccessFunction('{0}')", "Vehicle Details Updated Successfully!");

                        Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
                    }
                    else
                    {
                        string _msg = string.Format("ErrFunction('{0}')", "Unable to Update Vehicle data!");

                        Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
                    }
                }
                else
                {
                    //logic to add vehicle
                    if (BAL.AdminActivities.AddVehicle(vehicleInfo))
                    {
                        string _msg = string.Format("SuccessFunction('{0}')", "Vehicle Added Successfully!");

                        Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
                    }
                    else
                    {
                        string _msg = string.Format("ErrFunction('{0}')", "Unable to Add Vehicle!");

                        Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", _msg, true);
                    }
                }
            }
            catch(Exception ex)
            {
                
                
            }
           
        }
    }
}