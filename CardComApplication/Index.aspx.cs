using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CardComBo;
using DAL;



namespace CardComApplication
{
    

    public partial class Index : System.Web.UI.Page
    {
        ClientService clientService = null;
        List<GetClients_Result> clients = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            clientService = new ClientService();
            clients = clientService.GetClients();
            ClientGr.DataSource = clients;
            ClientGr.DataBind();
        }

        protected void AddNewClientClicked(object sender, EventArgs e)
        {
            string s = "window.open('AddNewClients.aspx', '', 'dialogWidth:500px;dialogHeight:300px;Center:yes');";
            ClientScript.RegisterStartupScript(typeof(Page), "openAddClientPage", s, true);
        }

        protected void DeleteClient(object sender, EventArgs args)
        {
            if (ClientGr.SelectedRow != null)
            {
                long ID = Convert.ToInt64(ClientGr.SelectedRow.Cells[1].Text);
            
                clientService = new ClientService();
                clientService.DeleteClient(ID);
                Page.Response.Redirect(Page.Request.Url.ToString(), true); ;
            }
        }
    }
}