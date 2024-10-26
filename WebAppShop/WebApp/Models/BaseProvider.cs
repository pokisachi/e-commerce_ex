//khởi tạo connection
using System.Data;
using System.Data.SqlClient;

namespace WebApp.Models;
public abstract class BaseProvider{
    IDbConnection? connection; //dấu chấm ? sẽ chấp nhận nullable
    IConfiguration conf;
    public BaseProvider(IConfiguration conf){
        this.conf=conf;
    }
    protected IDbConnection Connection=>
        connection ??=new SqlConnection(conf.GetConnectionString("Hshop"));
        // Dấu ?? Nếu null thì sẽ khởi tạo và gán vào biến connection
}