using System.Data;

namespace WebApp.Models;
public abstract class BaseRepository{
        protected IDbConnection connection;
        public BaseRepository(IDbConnection cn){
            connection=cn;
        }
}