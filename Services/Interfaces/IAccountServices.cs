using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using NGOWebApp.Models;

namespace NGOWebApp.Services.Interfaces
{
    public interface IAccountServices
    {
        Account checkLogin(string accMail, string pass);
        void createAccount(Account newAccount);
        void updateAccount(Account editAccount);
      
    }
}
