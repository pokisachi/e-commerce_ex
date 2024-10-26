using System.Data;
using System.Data.SqlTypes;
using Dapper;

namespace WebApp.Models;

public class SupplierRespository : BaseRepository
{
    public SupplierRespository(IDbConnection cn) : base(cn)
    {
    }
    

     public IEnumerable<Supplier> GetSuppliers(){
        return connection.Query<Supplier>("SELECT * FROM Supplier");
    }

    public Supplier? GetSupplier(string id){
        string sql = "SELECT * FROM Supplier WHERE Email = @Id";
        return connection.QuerySingleOrDefault<Supplier>(sql, new{id});
    }

   
}
