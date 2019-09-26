using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BAL
{
    public class UserActivities
    {
        public static List<VehicleInfo> SearchVehicles(string input)
        {
            return DAL.UserOperations.SearchVehicles(input);
        }
    }
}
