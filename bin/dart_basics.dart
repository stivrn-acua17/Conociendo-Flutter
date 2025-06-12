//import 'package:dart_basics/dart_basics.dart' as dart_basics;

void main(List<String> arguments) {

  print('\n---------------------------------------- VARIABLES ------------------------------------------');
  //var name = 'Aris Pepe';
  //int age = 31;
  //var example = 41.3;
  //name = 'Ramón';
  //print(name);

  //double age2 = 31.1;
  String name2 = 'Juan Pedro';
  name2 = 'Abelardo';
  String currentAge = "22 años.";
  //String fullText = name2 + currentAge;
  String fullText = 'Soy $name2 y tengo $currentAge';

  print(fullText);


  print('\n---------------------------------------- BOOLEANOS ------------------------------------------');
  bool imHappy = true;
  print(!imHappy);


  print('\n-------------------------------------- TIPO DINAMICO ----------------------------------------');
  dynamic example = "Hola soy un ejemplo";
  print(example);
  example = 23;
  print(example);


  print('\n---------------------------------------- TIPO FIJO ------------------------------------------');
  final String example2 = 'Juan';
  const String example3 = ' MI CLAVE 123';
  print(example2 + example3);


  print('\n--------------------------------------- CONVERSIONES ----------------------------------------'); 
  String toNumber = '31';
  int numberOK = int.parse(toNumber);
  print('El numero es $numberOK');

  int numberToString = 615;
  String stringOK = numberToString.toString();
  print(stringOK);

  String toDouble = '34.23';
  double doubleOK = double.parse(toDouble);
  print(doubleOK);


  print('\n---------------------------------- OPERACIONES MATEMATICAS ----------------------------------');
  int a = 3; 
  int b = 4;

  int suma = a + b;
  int resta = a - b;
  int multiplicacion = a * b;
  var divisionVar = a / b;
  double divisionDouble = a / b;
  int divisionSinDecimal = a ~/ b;
  int modulo = a % b;

  print('Resultado de la suma es: $suma');
  print('Resultado de la resta es: $resta');
  print('Resultado de la multiplicacion es: $multiplicacion');
  print('Resultado de la division con var es: $divisionVar');
  print('Resultado de la division con double es: $divisionDouble');
  print('Resultado de la division sin decimal es: $divisionSinDecimal');
  print('Resultado del modulo sin decimal es: $modulo');

  //a+=b;
  //a-=b;
  //a++;
  print('Resultado de la suma despues del print es: ${a++}'); // Suma uno despues de presentar el valor de a
  print('Resultado de la suma antes del print es: ${++a}'); // Suma uno antes de presentar el valor de a


  print('\n---------------------------------------- EJERCICIO 1 ----------------------------------------');
  /*
    EJERCICIO 1: CALCULADORA DE EDAD

    Objetivo:
    Escribe un programa en Dart que pida al usuario su año de nacimiento y calcule su edad actual

    Pasos a seguir:
    1. Pedir al usuario su año de nacimiento (leerlo como String)
    2. Convertir el año de nacimiento a numero entero
    3. Calcular la edad restando el año de nacimiento al año actual (2025)
    4. Mostrar el resultado en un mensaje como: 'Tienes X años'
  */

  String date = '2003';
  const int currentYear = 2025;
  int formatDate = int.parse(date);
  int result = currentYear - formatDate;
  print('Tienes $result años');


  print('\n---------------------------------------- EJERCICIO 2 ----------------------------------------');
  /*
    EJERCICIO 2: CALCULADORA DE PROPINA

    Objetivo: 
    Escribe un programa en Dart que calcule cuánto debe pagar cada persona despues de dividir la cuenta y agregar una propina

    Pasos a seguir:
    1. Pedir al usuario el total de la cuenta
    2. Pedir el porcentaje de propina a agregar
    3. Calcular el total a pagar sumando la propina
    4. Pedir el número de personas para dividir la cuenta
    5. Calcular cuánto debe pagar cada persona
    6. Mostrar el resultado en pantalla
  */  

  double cuenta = 95.67;
  double propina = 20;
  double total = cuenta * (1+propina/100);
  
  int cantidadPersonas = 5;
  String pagoPersona = (total / cantidadPersonas).toStringAsFixed(2);

  print('El total de la cuenta es: ${total.toStringAsFixed(2)}');
  print('Cada una de las $cantidadPersonas personas debe pagar: $pagoPersona');

}
