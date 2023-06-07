@isTest
public class CompanyTest {
    @isTest
    public static void customerCheck(){
        Company c= new Company();
        c.customerAdd('Infosys','www.infosys.com','info@gmail.com',9900445522L);
        c.companyName = 'Amr company';
        c.ceo='Kumaresh';
        c.employeeCount = 3000;
        c.revenue = 3000000000L;
        system.assertEquals(('Parent company name: Amr company with CEO name: Kumaresh .He has total of: 3000 Employees With total revenue of: 3000000000'), c.printCustomers());
    }
}