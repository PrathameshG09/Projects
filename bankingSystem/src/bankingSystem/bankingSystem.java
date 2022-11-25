package bankingSystem;

import java.util.*;
 
  
public class bankingSystem  
{  
    
    public static void main(String args[] )  
    {  
        
    	String name="Prathamesh Gosavi ";
    	String name1="Jay.D.j";
    	String name3="Vicky Ka";
    	
    	int balance = 5000  ,withdraw, deposit,AccountNo;  
          
       
        Scanner sc = new Scanner(System.in);  
          
        while(true)  
        {  
            System.out.println("Welcome To Banking System");  
            System.out.println("Choose 1 : Withdraw");  
            System.out.println("Choose 2 : Deposit");  
            System.out.println("Choose 3 : Check Balance");  
            System.out.println("Choose 4 : EXIT");  
            System.out.print("Select the number whic you can perform:");  
              
              
            int choice = sc.nextInt();  
            switch(choice)  
            {  
                case 1:
                	
       	System.out.print("Enter Account Number :");
         AccountNo = sc.nextInt();
        
        System.out.print("Enter money to be withdrawn:");  
                      
        
        withdraw = sc.nextInt();  
                      
        
        if(balance >= withdraw)  
        {  
            
        	
            balance = balance - withdraw;  
            System.out.println("Please take your cash");  
        }  
        else  
        {  
            
        	
            System.out.println("Insufficient Balance");  
        }  
        System.out.println("");  
        break;  
   
                case 2:
                	
        System.out.print("Enter Account Number :");
        AccountNo = sc.nextInt();
                      
        System.out.print("Enter money to be deposited:");  
                      
         
        deposit = sc.nextInt();  
                      
       
        balance = balance + deposit;  
        System.out.println("Your Money has been successfully depsited");  
        System.out.println("");  
        break;  
   
                case 3:
         
                	
                	System.out.println("Name : "+name);  
        System.out.printf("Balance : "+balance);
        System.out.println("");
        System.out.println("Thank You for Visiting...");
        
       break;  
   
                case 4:  
        
        System.exit(0);  
            }  
        }  
    }  
}  