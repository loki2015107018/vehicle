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

        public static bool addBookingDetails(BookingData bookingData)
        {
            return DAL.UserOperations.addBookingDetails(bookingData);
        }
        public static List<BookingData> GetBookingList()
        {
            return DAL.UserOperations.GetAllBookings();
        }
        public static bool DeleteABookedVehicle(int id)
        {
            return DAL.UserOperations.DeleteVehicle(id);
        }
    }
}
