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

        public static bool addBookingDetails(BookingData bookData)
        {
            using (DBEntities db = new DBEntities())
            {
                db.BookingDatas.Add(bookData);
                if (db.SaveChanges() > 0) return true;
                else return false;
            }
        }
        public static List<BookingData> GetAllBookings()
        {
            using (DBEntities db = new DBEntities())
            {
                return db.BookingDatas.ToList();
            }
        }
        public static bool DeleteVehicle(int id)
        {
            try
            {
                using (DBEntities db = new DBEntities())
                {
                    var Result = db.BookingDatas.Where(x => x.VehicleId == id).FirstOrDefault();
                    db.BookingDatas.Remove(Result);
                    if (db.SaveChanges() > 0)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
            }
            catch
            {
                return false;
            }

        }
    }
}
