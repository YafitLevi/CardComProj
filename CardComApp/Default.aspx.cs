using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using CardComBo;
using DAL;

namespace CardComApp
{
    public partial class _Default : Page
    {
        ClientService clientService = null;
        List<GetClients_Result> clients = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            clientService = new ClientService();
            clients = clientService.GetClients();
            ClientGr.DataSource = clients;
            
        }

       
    }
}