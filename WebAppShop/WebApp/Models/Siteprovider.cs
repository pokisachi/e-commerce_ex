using WebApp.Models;
using WebApp.Services;

public class Siteprovider: BaseProvider{
    public Siteprovider(IConfiguration conf):base(conf){

    }
    CategoryRepository? category;
    public CategoryRepository Category => category ??= new(Connection);

    ProductRepository? product;

    public ProductRepository Product => product ??= new(Connection);

     SupplierRespository? supplier;

    public SupplierRespository Supplier => supplier ??= new(Connection);

     CartRepository? cart;

    public CartRepository Cart => cart ??= new(Connection);

    InvoiceRepository? invoice;
    public InvoiceRepository Invoice => invoice ??= new InvoiceRepository(Connection);
    EmployeeRepository? employee;
    public EmployeeRepository Employee => employee ??= new EmployeeRepository(Connection);
    VnPaymentRepository? vnPayment;
    public VnPaymentRepository VnPayment => vnPayment ??= new VnPaymentRepository(Connection);

}