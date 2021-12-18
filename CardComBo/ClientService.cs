using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL.Classes;
using DAL;

namespace CardComBo
{
    public class ClientService
    {
        public List<GetClients_Result> GetClients()
        {
            try
            {
                ClientController controller = new ClientController();
                return controller.GetClients();
            }
            catch (Exception ex)
            {
                return null;
            }
        }
        
        public void AddClient(long ID, string cname, string mail,DateTime birth, string gender, string phone)
        {
            try
            {
                ClientController client = new ClientController();
                client.AddClient(ID, cname, mail, birth, gender, phone);
            }
            catch(Exception ex)
            {
                // write to log
            }
        }

        public void DeleteClient(long id)
        {
            try
            {
                ClientController client = new ClientController();
                client.DeleteClient(id);
            }
            catch(Exception ex)
            {
                //write to log
            }
        }
    }
}
