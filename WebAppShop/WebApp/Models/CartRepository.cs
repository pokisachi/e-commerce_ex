using System.Data;
using Dapper;

namespace WebApp.Models;

public class CartRepository:BaseRepository
{
    public CartRepository(IDbConnection connection):base(connection)
    {

    }
    public int Edit(Cart obj){
        string sql = "UPDATE Cart SET Quantity = @Quantity, UpdatedDate = GETDATE() WHERE CartCode = @CartCode AND ProductId = @ProductId;";
        return connection.Execute(sql, new{obj.CartCode, obj.ProductId, obj.Quantity});
    }
    public int Add(Cart obj){
        return connection.Execute("AddCart", new{obj.CartCode, obj.ProductId, obj.Quantity}, 
        commandType: CommandType.StoredProcedure);
    }

    public int Delete(int id){
        string sql="DELETE FROM Cart WHERE ProductId = @Id";
        return connection.Execute(sql, new{id});

    }
    public IEnumerable<Cart> GetCarts(string code){
        //miss
        string sql = "SELECT Cart.*, ProductName, Price, Image FROM Cart JOIN Product ON Cart.ProductId = Product.ProductId AND CartCode = @Code";
        return connection.Query<Cart>(sql, new{code});
    }

    internal int Delete(byte id)
    {
        throw new NotImplementedException();
    }

    internal int Delete()
    {
        throw new NotImplementedException();
    }
}