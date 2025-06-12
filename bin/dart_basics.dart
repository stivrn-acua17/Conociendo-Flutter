//import 'package:dart_basics/dart_basics.dart' as dart_basics;
import 'dart:io';

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

  print('\n---------------------------------------* EJERCICIO 1 *---------------------------------------');
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

  //print('Introduce tu año de nacimiento:');
  //String date = stdin.readLineSync()!;

  String date = "2003";
  const int currentYear = 2025;
  int formatDate = int.parse(date);
  int result = currentYear - formatDate;
  print('Tienes $result años');

  print('\n---------------------------------------* EJERCICIO 2 *---------------------------------------');
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

  /*
    print('Introduce el valor de la cuenta:');
    double cuenta = double.parse(stdin.readLineSync()!);

    print('Introduce el porcentaje de la propina:');
    double propina = double.parse(stdin.readLineSync()!);

    print('Introduce la cantidad de personas a pagar:');
    double cantidadPersonas = double.parse(stdin.readLineSync()!);
  */

  double cuenta = 95.67;
  double propina = 20;
  int cantidadPersonas = 5;
  double total = cuenta * (1 + propina / 100);

  String pagoPersona = (total / cantidadPersonas).toStringAsFixed(2);

  print('El total de la cuenta es: ${total.toStringAsFixed(2)}');
  print('Cada una de las $cantidadPersonas personas debe pagar: $pagoPersona');

  print(
      '\n--------------------------------- ESTRUCTURAS CONDICIONALES ---------------------------------');
  int userAge = 16;

  if (userAge >= 18) {
    print('Eres mayor de edad');
  } else {
    print('Eres menor de edad');
  }

  //print(userAge >= 18 ? 'Eres mayor de edad' : 'Eres menor de edad');  // Operador ternario

  int experienceYears = 5;

  if (experienceYears > 8) {
    print('Eres un programador SENIOR');
  } else if (experienceYears >= 5) {
    print('Eres un programador MID');
  } else {
    print('Eres un programador junior');
  }

  //print('Introduce el dia de la semana:');
  //int numberOfTheWeek = int.parse(stdin.readLineSync()!);
  int numberOfTheWeek = 6;

  switch (numberOfTheWeek) {
    case 1: print('Lunes');
    case 2: print('Martes');
    case 3: print('Miercoles');
    case 4: print('Jueves');
    case 5: print('Viernes');
    case 6: print('Sabado');
    case 7: print('Domingo');
    default: print('Numero no valido');
  }

  const days = {
    1: 'Lunes',
    2: 'Martes',
    3: 'Miercoles',
    4: 'Jueves',
    5: 'Viernes',
    6: 'Sabado',
    7: 'Domingo'
  };

  print(days[numberOfTheWeek] ?? 'Numero no válido');


  print('\n---------------------------------------* EJERCICIO 3 *---------------------------------------');
  /*
    EJERCICIO 3: IDENTIFICAR NUMEROS POSITIVOS Y NEGATIVOS

    Objetivo:
    Escribe un programa en Dart que determine si un número ingresado por el usuario es positivo, negativo o cero.
  */

  //print('Introduce un número:');
  //int userNumber = int.parse(stdin.readLineSync()!);
  int userNumber = 5;

  if (userNumber > 0){
    print('Es positivo');
  } else if (userNumber < 0){
    print('Es negativo');
  } else {
    print('El numero es 0');
  }


  print('\n---------------------------------------* EJERCICIO 4 *---------------------------------------');
  /*
    EJERCICIO 4: MESES DEL AÑO

    Objetivo:
    Escribe un programa en Dart que reciba un número entre 1 y 12 e imprima el nombre del mes correspondiente del año.
  */

  //print('Introduce el numero del mes:');
  //int numberMonth = int.parse(stdin.readLineSync()!);
  int numberMonth = 5;

  const months = {
    1: 'Enero',
    2: 'Febrero',
    3: 'Marzo',
    4: 'Abril',
    5: 'Mayo',
    6: 'Junio',
    7: 'Julio',
    8: 'Agosto',
    9: 'Septiembre',
    10: 'Octubre',
    11: 'Noviembre',
    12: 'Diciembre'
  };

  print(months[numberMonth] ?? 'Numero no válido');

}
