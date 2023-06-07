public class Company {
    public string companyName;
    public string ceo;
    public integer employeeCount;
    public long revenue;
   
    //list of all customers:
    private list <Client> customers = new list<Client>();
    //private inner class to store clients details:
    private class Client{
    public string clientName;
    public string website;
    public string email;
    public long phone;       
        Client(string clientName,string website,string email,long phone){
            this.clientName=clientName;
            this.website= website;
            this.email=email;
            this.phone=phone;
        }              
    }    
    //add new customer
    public void customerAdd(string clientName,string website,string email,long phone){
        Client customer = new Client(clientName,website,email,phone);
        //add customers:
       customers.add(customer);
    }
    //print the list of all customers 
    public string printCustomers(){
         //parent company details firsts:
        	string x;
        	string y;
            x=('Parent company name: '+companyName+' with CEO name: '+ceo+' .He has total of: '+employeeCount+ ' Employees'+ ' With total revenue of: '+revenue);
        for(Client customer :customers){
            //system.debug(customers);
            y=('Customer name: '+customer.clientName+ ', Customer Website: '+ customer.website+ ', Customer Email: '+ customer.email+', Customer\'s phone number: '+customer.phone);
        }
        return (x);
    }
}