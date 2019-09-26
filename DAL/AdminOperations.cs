using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class AdminOperations
    {
        public static List<UserMaster> PendingListForApproval()
        {
            using (DBEntities db = new DBEntities())
            {
                return db.UserMasters.Where(x => x.IsActive == null).ToList();
            }
        }
        public static bool ApproveUsers(int UID, string UserName, bool active)
        {
            try
            {
                using (DBEntities db = new DBEntities())
                {
                    UserMaster userMaster = db.UserMasters.Where(x => x.UID == UID).FirstOrDefault();
                    userMaster.IsActive = active;
                    userMaster.IsApprovedOn = DateTime.Now;
                    userMaster.IsApprovedBy = UserName;
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
        public static bool AddVehicle(VehicleInfo vehicleInfo)
        {
            try
            {
                using (DBEntities db = new DBEntities())
                {
                    db.VehicleInfoes.Add(vehicleInfo);
                    if (db.SaveChanges() > 0) return true;
                    else return false;
                }
            }
            catch (DbEntityValidationException e)
            {
                foreach (var eve in e.EntityValidationErrors)
                {
                    Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                        eve.Entry.Entity.GetType().Name, eve.Entry.State);
                    foreach (var ve in eve.ValidationErrors)
                    {
                        Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                            ve.PropertyName, ve.ErrorMessage);
                    }
                }
                throw;
            }
        }
        public static List<VehicleInfo> GetAllVehicles()
        {
            using (DBEntities db = new DBEntities())
            {
                return db.VehicleInfoes.ToList();
            }
        }
        public static string GetBranchName(int id)
        {
            using (DBEntities db = new DBEntities())
            {
                return db.BranchMasters.Where(x => x.BranchCode == id).Select(y => y.BranchName).ToString();
            }
        }
        public static VehicleInfo GetVehicleDetailsById(int id)
        {
            try
            {
                using (DBEntities db = new DBEntities())
                {
                    return db.VehicleInfoes.Where(x => x.VehicleId == id).FirstOrDefault();
                }
            }
            catch
            {
                return new VehicleInfo();
            }
        }
        public static bool UpdateVehicleData(VehicleInfo vehicle)
        {
            using (DBEntities db = new DBEntities())
            {
                var res = db.VehicleInfoes.Where(x => x.VehicleId == vehicle.VehicleId).FirstOrDefault();
                res.BranchCode = vehicle.BranchCode;
                res.InsuranceExpiryDate = vehicle.InsuranceExpiryDate;
                res.LastServicedDate = vehicle.LastServicedDate;
                res.Model = vehicle.Model;
                res.PriceperDay = vehicle.PriceperDay;
                res.ServiceDueDate = vehicle.ServiceDueDate;
                res.VehicleNumber = vehicle.VehicleNumber;
                res.VehicleType = vehicle.VehicleType;
                res.Year = vehicle.Year;
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

        public static bool DeleteVehicle(int id)
        {
            try
            {
                using (DBEntities db = new DBEntities())
                {
                   var Result= db.VehicleInfoes.Where(x => x.VehicleId == id).FirstOrDefault();
                    db.VehicleInfoes.Remove(Result);
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
