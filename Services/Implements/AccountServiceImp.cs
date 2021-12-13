using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using NGOWebApp.Data;
using NGOWebApp.Models;
using NGOWebApp.Services.Interfaces;

namespace NGOWebApp.Services.Implements
{
    public class AccountServiceImp : IAccountServices
    {
        private readonly DatabaseContext context;
        public AccountServiceImp(DatabaseContext context)
        {
            this.context = context;
        }

        public Account checkLogin(string accMail, string pass)
        {
            Account account = context.GetAccounts.SingleOrDefault(
                a => a.Email.Equals(accMail));
            if (account != null)
            {
                if (account.Password.Equals(pass))
                {
                    return account;
                }
                else
                {
                    return null;
                }
            }
            else
            {
                return null;
            }
        }

        public void createAccount(Account newAccount)
        {
            Account account = context.GetAccounts.SingleOrDefault(
               a => a.Email.Equals(newAccount.Email));
            if (account == null)
            {
                context.GetAccounts.Add(newAccount);
                context.SaveChanges();
            }
            else
            {
                // no dothing
            }
        }

        public void updateAccount(Account editAccount)
        {
           
        }
    }
}
