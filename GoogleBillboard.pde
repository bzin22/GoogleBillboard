// AP Computer Science - Spring 2017 - Mr. Simon
// Google Billboard Problem - Bryan Zin

public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
public void setup()  
{            
     int a = 2;
     int b = 12;
     String digits = e.substring(a,b);
     double dNum = Double.parseDouble(digits);

     String moreDigits = e.substring(1);
     double sum = 0;
     String number = new String();
     double gNum = Double.parseDouble(moreDigits); // for 49


     for(int i = 0; i <= 100; i++)
     {
        while(isPrime(dNum) == false)
        {
          a++;
          b++;
          digits = e.substring(a,b);
          dNum = Double.parseDouble(digits);
        }
     }
     System.out.println(digits); // should give 7427466391

     for (int r = 2; r <= e.length(); r++)
     {
       moreDigits = e.substring(r);
       sum = sum + gNum; 
       number = number + moreDigits;
       System.out.println(sum);
       if (r % 10 == 0)
       {
         // check if sum is 49
         if (sum == 49) // does not get to this part, needs to be fixed. 
         {
           System.out.println(number);
         }
         sum = 0;
         number = "";
       }
     }

     noLoop();  
}  
public void draw()  
{   
    // don't put any code here
} 
public boolean isPrime(double dNum)  
{   
     if (dNum < 2)
     {
       return false;
     }
     for (int i = 2; i <= Math.sqrt(dNum); i++)
     {
       if (dNum % i == 0)
       {
         return false;
       }
     }
     return true;
} 