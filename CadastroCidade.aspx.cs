using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjAula4
{
    public partial class CadastroCidade : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Primeira vez que estiver abrindo a pagina
            if (!IsPostBack) {
                LoadDDL();
                LoadGrid();
            }
            
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            int idEstado = int.Parse(ddlEstado.SelectedValue.ToString());

            dbAula4Entities context = new dbAula4Entities();

            Cidade cidade = new Cidade()
            {
                Descricao = txtDescricao.Text,
                Estado = context.Estado.First<Estado>(v => v.IdEstado == idEstado)
            };

            context.Cidade.Add(cidade);
            context.SaveChanges();
            SendMessage("Registro Inserido!");
        }

        private void LoadGrid()
        {

            dbAula4Entities context = new dbAula4Entities();
            var dados = (from c in context.Cidade
                         from e in context.Estado.Where(x => x.IdEstado == c.IdEstado)
                         select new
                         {
                             IdCidade = c.Id,
                             NomeCidade = c.Descricao,
                             Estado = e.Descricao
                         }).ToList();

            gvCidade.DataSource = dados;//new dbAula4Entities().Cidade.ToList<Cidade>();
            gvCidade.DataBind();

        }

        private void LoadDDL()
        {
            ddlEstado.DataSource = new dbAula4Entities().Estado.ToList<Estado>();
            ddlEstado.DataTextField = "Descricao";
            ddlEstado.DataValueField = "IdEstado";
            ddlEstado.DataBind();
            ddlEstado.Items.Insert(0, "Selecione um estado");
            ddlEstado.SelectedIndex = 0;
        }

        private void SendMessage(String txt)
        {
            lblMsg0.Text = txt;
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}