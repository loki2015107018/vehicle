using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BAL
{
    public class Accounts
    {
        public static List<UserMaster> LoginValidate(string Username,string Password)
        {
            return DAL.UserAccounts.LoginValidate(Username, Password);
        }
        public static List<RoleMaster> GetUserRoles()
        {
            return DAL.UserAccounts.GetRoles();
        }
        public static List<BranchMaster> GetBranches()
        {
            return DAL.UserAccounts.GetBranches();
        }
        public static bool CheckUserIdExistance(string userId)
        {
            return DAL.UserAccounts.CheckUserId(userId);
        }
        public static bool Registration(UserMaster um)
        {
            return DAL.UserAccounts.Register(um);
        }
    }
}
