using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using System.Data;
using Exemplo.Model.ExemploDbContext;
using Model.Cliente;

namespace Exemplo.Model.Cliente
{
    public class ClienteCrud
    {
        DbContextExemplo db = new DbContextExemplo();

        public void InsertOrUpdate(ClienteModel cliente)
        {
            try
            {
                db.Entry(cliente).State = cliente.Id == 0 ? EntityState.Added : EntityState.Modified;
                db.SaveChanges();
            }
            catch (Exception)
            {
                throw;
            }
        }

        public void Delete(int id)
        {
            try
            {
                var cliente = db.Clientes.Find(id);
                db.Clientes.Remove(cliente);
                db.SaveChanges();
            }
            catch (Exception)
            {
                throw new Exception("Error ao excluir o Cliente");
            }
        }

        public IQueryable<ClienteModel> CarregarDados()
        {
            try
            {
                var dados = db.Clientes;

                return dados;
            }
            catch (Exception)
            {
                throw;
            }
        }

    }
}
