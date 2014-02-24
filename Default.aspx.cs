using Model.Cliente;
using Exemplo.Model.Cliente;
using Exemplo.Model.ExemploDbContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exemplo
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CarregarGrid();
            }
        }

        protected void Salvar()
        {
            var cliente = new ClienteModel();
            var db = new ClienteCrud();

            if (ModelState.IsValid)
            {
                //cliente.Nome = txtNome.Text;
                //cliente.Email = txtEmail.Text;
                //cliente.DataNascimento = Convert.ToDateTime(DataNascimento.Text);
                //db.InsertOrUpdate(cliente);

                //gridDados.DataBind();

            }
        }


        public IQueryable<ClienteModel> CarregarGrid()
        {
            var db = new ClienteCrud();
            return db.CarregarDados();
        }

        public void FormCadastro_InsertItem()
        {
            var db = new ClienteCrud();
            var item = new ClienteModel();
            TryUpdateModel(item);
            if (ModelState.IsValid)
            {
                db.InsertOrUpdate(item);
                gridDados.DataBind();
            }
        }

        //protected void BtnSalvar_Click(object sender, EventArgs e)
        //{
        //    var db = new ClienteCrud();
        //    var item = new ClienteModel();
        //    //TryUpdateModel(item);
        //    if (ModelState.IsValid)
        //    {
        //        db.InsertOrUpdate(item);
        //        gridDados.DataBind();
        //    }
        //}
    }
}