using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BAL
{
   public class AdminActivities
    {
        public static List<UserMaster> GetApprovalPendingList()
        {
            return DAL.AdminOperations.PendingListForApproval();
        }
        public static bool ApproveUsers(int UID, string UserName, bool active)
        {
            return DAL.AdminOperations.ApproveUsers(UID, UserName,active);
        }
        public static bool AddVehicle(VehicleInfo vehicleInfo)
        {
            return DAL.AdminOperations.AddVehicle(vehicleInfo);
        }
        public static List<VehicleInfo> GetVehicleList()
        {
            return DAL.AdminOperations.GetAllVehicles();
        }
        public static string GetBranchName(int id)
        {
            return DAL.AdminOperations.GetBranchName(id);
        }

        public static VehicleInfo GetVehicleDetailsById(int id)
        {
            return DAL.AdminOperations.GetVehicleDetailsById(id);
        }

        public static bool UpdateVehicleDetails(VehicleInfo vehicle)
        {
            return DAL.AdminOperations.UpdateVehicleData(vehicle);
        }

        public static bool DeleteAVehicle(int id)
        {
            return DAL.AdminOperations.DeleteVehicle(id);
        }
    }
}
