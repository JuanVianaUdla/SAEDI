using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sembrar
{
    public partial class PrincipalLogin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_LoggedIn(object sender, EventArgs e)
        {
            if (System.Web.Security.Roles.IsUserInRole(Login1.UserName, "Administrador"))
            {                
                Response.Redirect("Administrador/Inicio.aspx");
            }
            if (System.Web.Security.Roles.IsUserInRole(Login1.UserName, "Tecnico"))
            {
                Response.Redirect("Tecnico/Inicio.aspx");
            }
            if (System.Web.Security.Roles.IsUserInRole(Login1.UserName, "Orientador"))
            {
                Response.Redirect("Orientador/Inicio.aspx");
            }
            if(System.Web.Security.Roles.IsUserInRole(Login1.UserName, "Coordinador"))
            {
                Response.Redirect("Coordinador/Inicio.aspx");
            }
        }
    }
}