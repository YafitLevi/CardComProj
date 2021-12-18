using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CardComBo;

namespace CardComApplication
{
    public partial class AddNewClients : System.Web.UI.Page
    {
        ClientService clientService = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            clientService = new ClientService();
        }

        protected void AddClientClicked(object sender, EventArgs e)
        {
            long id = Convert.ToInt64(IDClient.Text);
            string gender = RadioButtonList1.SelectedItem.Value;
            DateTime birth = Convert.ToDateTime(BirthDate.Text);
            clientService.AddClient(id, ClientName.Text, ClientEmail.Text, birth, gender, PhoneClient.Text);
            Page.Response.Redirect("Index.aspx", true);
            //ClientScript.RegisterStartupScript(typeof(Page), "closePage", "window.close();", true);
        }

  
    }
}