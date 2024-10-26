namespace WebApp.Models;

public class Employee
{
    public int EmployeeId{get; set;}

    public string EmployeeName{get; set;} = null!;
    public int? ParentId{get; set;}
    public string? ParentName{get; set;}
}