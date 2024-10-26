using System.Data;
using Dapper;

namespace WebApp.Models;

public class CategoryRepository:BaseRepository
{
    public CategoryRepository(IDbConnection connection) : base (connection){
    }
    public IEnumerable<Category> GetCategories(){
        return connection.Query<Category>("SELECT * FROM Category");
    }

     public IEnumerable<CategoryProduct> GetCategoryAndProducts(){
        return connection.Query<CategoryProduct>("GetCategoryAndProducts",
        commandType: CommandType.StoredProcedure);
    }
    public Category? GetCategory(short id){
        string sql = "SELECT * FROM Category WHERE CategoryId = @id"; //chua hieu ro
        return connection.QuerySingleOrDefault<Category>(sql, new{id});
    }

  
}