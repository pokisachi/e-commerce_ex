namespace WebApp.Models;
public class Product
{
    public int ProductId{get; set;}
    public string? ProductName{get; set;}
    public string? ProductAlias{get; set;}
    public short CategoryId{get; set;}
    public string? Unit{get; set;}
    public decimal Price{get; set;}
    public string? Image{get; set;}
    public DateTime ProductDate{get; set;}
    public decimal SaleOff{get; set;}
    public int Viewed{get; set;}
    public string? Description{get; set;}
    public string? SupplierId{get; set;}
}
/*[ProductId] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[ProductName] [nvarchar](64) NOT NULL,
	[ProductAlias] [nvarchar](64) NULL,
	[CategoryId] SMALLINT NOT NULL,
	[Unit] [nvarchar](50) NULL,
	[Price] [DECIMAL] NULL,
	[Image] [nvarchar](50) NULL,
	[ProductDate] [datetime] NOT NULL,
	[SaleOff] [DECIMAL] NOT NULL,
	[Viewed] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[SupplierId] [varchar](2) NOT NULL*/