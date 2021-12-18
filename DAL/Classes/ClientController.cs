using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Spatial;
using DAL;

namespace DAL.Classes
{
    public class ClientController
    {
        //string connectionString = @"data source=LAPTOP-15E4NTAU;initial catalog=CardCom;integrated securityl=True;MultipleActiveResultSets=True;App=EntityFramework&quot";
        //SqlConnection _sqlConnection = null;
        CardComEntities1 _context = null;
        private CardComEntities1 Context
        {
            get
            {
                if (_context == null)
                {
                    _context = new CardComEntities1();
                }
                return _context;
            }
        }

        public ClientController()
        {
            //_sqlConnection = new SqlConnection(connectionString);
            //_sqlConnection.Open();



        }
        /// <summary>
        /// Get all client
        /// </summary>
        /// <returns></returns>
        public List<GetClients_Result> GetClients()
        {
            List<GetClients_Result> clients = Context.GetClients().ToList();

            return clients;
        }

        /// <summary>
        /// Add new client
        /// </summary>
        /// <param name="id"></param>
        /// <param name="name"></param>
        /// <param name="mail"></param>
        /// <param name="birth"></param>
        /// <param name="gender"></param>
        /// <param name="phone"></param>
        /// <exception cref="Exception"></exception>
        public void AddClient(long id, string name, string mail, DateTime birth, string gender, string phone)
        {
            List<Client> clients = (from c in Context.Client where c.ID == id select c).ToList();
            if (clients.Count() > 0)
            {
                throw new Exception("הלקוח קיים במאגר");
            }
            else
            {
                Client client = new Client();
                client.ID = id;
                client.CName = name;
                client.CMail = mail;
                client.Gender = gender;
                client.Birth = birth;
                client.phone = phone;
                Context.Client.Add(client);
                Context.SaveChanges();
            }
        }

        /// <summary>
        /// Delete client by ID
        /// </summary>
        /// <param name="id"></param>
        /// <exception cref="Exception"></exception>
        public void DeleteClient(long id)
        {
            List<Client> clients = (from c in Context.Client where c.ID == id select c).ToList();
            if (clients.Count() > 0)
            {
                Context.Client.Remove(clients[0]);
                Context.SaveChanges();
            }
            else
            {
                throw new Exception("הלקוח לא קיים במאגר");
            }

        }
    }
}