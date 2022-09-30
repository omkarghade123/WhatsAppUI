//1.Create a Class and Create following constructor :

//1.Default Constructor

class Master{
    Master() {
    print('This is the default constructor');
  }
}
  
void main() {
 Master geek = new Master();  
}
/////---------------------------------------------------------------
//2.parameterized constructor

class parameterized{
     parameterized(int a) {
      
    print('This is the parameterized constructor');
  }
}
  
void main2() {
  parameterized geek = new parameterized(2);  
}
//---------------------------------------------------------------
//3.Write Switch Statement to Implement Below Logic
//-- Display Month By number (e.g. 5 - May)

void main3()
{
    int month= 5;
    switch (month) {
    case 1: {
        print("January");
    } break;
    case 2: {
        print("Febrauary");
    } break;
    case 3: {
        print("March");
    } break;
    case 4: {
        print("April");
    } break;
    case 5: {
        print("May");
    } break; 
      case 6:{
        print("June");
    }break;
      case 7:{
        print("July");
    } break;
    case 8: {
        print("August");
    } break;
    case 9: {
        print("September");
    } break; 
      case 10:{
        print("October");
    }break;
      case 11:{
        print("November");
    }break;
      case 12:{
        print ("December");
      }
      return print ("Enter valid number");
    }
    }

//---------------------------------------------------------------
//4.Implement a program using for Loop to print cube/square
//from Zero to Five.
 void main4() {
 double i;
 for (i = 0; i <= 5; i++) {
 print("Cube :${i * i * i} , Square: ${i * i}");
}
 }
