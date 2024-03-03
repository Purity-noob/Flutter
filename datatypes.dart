void main(){
//integer calculation
int num1 = 10;
int num2 = 29;

num sum = num1 + num2;
print("The sum of the two is $sum");

//double calculation
double num3 = 45.90;
double num4 = 6.9;

double divout = num3 / num4;
print("$divout");

//string manipulation
String name = "Jane ";
String salutation = "Hello ";
print("$salutation $name" );

//list manipulation
List<String> myGrades = ['A','A','B','C+','B+'];
print(myGrades);
String firstGrade = myGrades[0];
String lastGrade = myGrades[4];
print("My first grade is from the list is $firstGrade and my last grade from the list $lastGrade");

//Mapping in Dart(key-value pair)
Map<int,String> position = {1:"Joy",2:"Luke",3:"Tobi"};
print(position);
print(position[1]);



}
