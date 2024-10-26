using System.Data;
using Dapper;

namespace WebApp.Models;

public class ProductRepository:BaseRepository
{
    public ProductRepository(IDbConnection connection): base(connection)
    {
    }

    public IEnumerable<Product> GetProductsRelation(short categoryid, int id){
        string sql = "SELECT * FROM Product WHERE CategoryId = @CategoryId AND ProductId<>@id";
        return connection.Query<Product>(sql, new{categoryid, id});
    }
    public IEnumerable<Product> GetProducts(){
        return connection.Query<Product>("SELECT * FROM Product");
    }
    //chua hieu ro
    public IEnumerable<Product> GetProductsByCategory(short id){
        string sql = "SELECT * FROM Product WHERE Categoryid = @Id";
        return connection.Query<Product>(sql, new{id});
    }

    public Product? GetProduct(int id){
        string sql = "SELECT * FROM Product WHERE ProductId = @Id";
        return connection.QuerySingleOrDefault<Product>(sql, new{id});
    }

    internal string? GetProductsRelation(object categoryId, int id)
    {
        throw new NotImplementedException();
    }
}