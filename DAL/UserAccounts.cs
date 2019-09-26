using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
   public class UserAccounts
    {
        public static List<UserMaster> LoginValidate(string Username,string Password)
        {
            using (DBEntities db=new DBEntities())
            {
              var Result= db.UserMasters.Where(x => x.UserName == Username && x.Password == Password);
                if (Result != null)
                    return Result.ToList();
                else
                    return new List<UserMaster>();
            }
        }

        public static List<RoleMaster> GetRoles()
        {
            using (DBEntities db=new DBEntities())
            {
               return db.RoleMasters.Where(x=>x.RoleID!=1).ToList();
            }
        }

        public static List<BranchMaster> GetBranches()
        {
            using (DBEntities db = new DBEntities())
            {
                return db.BranchMasters.ToList();
            }
        }
        public static bool CheckUserId(string userId)
        {
            using (DBEntities db = new DBEntities())
            {
                if (db.UserMasters.Where(x => x.UserName == userId).ToList().Count>0)
                {
                    return true;
                }
                else
                    return false;
            }
        }

        public static bool Register(UserMaster um)
        {
            using (DBEntities db=new DBEntities())
            {
                db.UserMasters.Add(um);
                if(db.SaveChanges()>0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }
    }
}
