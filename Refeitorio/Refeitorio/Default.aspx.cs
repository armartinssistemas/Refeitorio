using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Refeitorio
{
    public partial class Default : System.Web.UI.Page
    {
        private databaseEntities entity = new databaseEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            Usuario u =
            entity.Usuario.FirstOrDefault(x =>
                x.login == Login1.UserName &&
                x.senha == Login1.Password);
            if (u == null)
            {
                e.Authenticated = false;
            }else
            {
                Session["usuariologado"] = u;
                e.Authenticated = true;
                Response.Redirect("paginas/Principal.aspx");
            }
        }
    }
}