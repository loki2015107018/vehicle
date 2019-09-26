using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
   public class UserOperations
    {
        public static List<VehicleInfo> SearchVehicles(string input)
        {
            using (DBEntities db=new DBEntities())
            {
                return db.VehicleInfoes.Where(x => x.VehicleType.Contains(input) || x.Model.Contains(input)).ToList();
            }
        }
    }
}
