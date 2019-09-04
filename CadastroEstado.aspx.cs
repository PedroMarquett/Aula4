using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjAula4
{
    public partial class CadastroEstado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadGrid();
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            Estado estado = new Estado()
            {
                Descricao = txtDescricao.Text
            };

            dbAula4Entities context = new dbAula4Entities();
                context.Estado.Add(estado);
                context.SaveChanges();
                LoadGrid();
                SendMessage("Registro Inserido!");
            
        }

        private void LoadGrid(){

            gvEstado.DataSource = new dbAula4Entities().Estado.ToList<Estado>();
            gvEstado.DataBind();

        }

        private void SendMessage(String txt) {
            lblMsg.Text = txt;
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}