import 'package:oti_training_day_2/oti_training_day_2.dart'
    as oti_training_day_2;

import "Car.dart";

void main(List<String> arguments) {
//recap
//final and const
  final List<num> array1 = [0, 1, 2, 3];
  const List<num> array2 = [0, 1, 2, 3];

  // array2[0] = 2;
  // array1[0] = 2;
  // print(array1);
  // print(array2);
  // print(array2..sort());
  // print(array1..sort());

  /* array1 bisa diubah sementara array 2 ga bisa karena dia const*/

  //*late operator/
  // late var string1;
  // final String? string2;//bisa ada null
  // late var string1 = getString();
  // var string2 = getString2();

  // print('Hello world!');
  // string1; // lazy loaded maksudnya lazy adalah nanti aja di panggilnya

  late String
      name; // bisa mau nanti aja boleh dideclarenya ga di declare juga ggp
  //or to achieve the same affect pake final juga bisa
  final String? name1; // bedanya ini memperbolehkan name1 untuk menjadi null
  //null safety
  // String? a;
  // a = null;
  // a?.length;
  // print('a is $a.');

  //function optional positional parameter or arguments

  //tujuan mempermudah untuk menulis less code apalagi kalau misalkan
  //ingin melakukan polymorphism
  //
  // print(pow(2, 2));
  // print(pow(2, 3));
  // print(pow(2));

  // print(info("dwika"));

  // print(info("dwika",occupation: "student"));
  //optional [] harus berurut tapi kalau pake ini {} ga berurut gpp
  //contoh polymorphism pake ini
  // Car("Toyota", "Thailand");
  // Car("Honda", "Japan", "1000c");
  // Car("Honda", "America", "1500cc", "Bambang");
  //For practical use untuk apa misal kita ada
  //User
  // Dia punya namanya hanya ada 2 silabel sementara sistem mintanya 3
  // tapi mau otomatis kalau inputnya cuman2 maka last namenya ga ada middle namenya ada
  // User("David","Bangun");
  //User("Dwikavindra","Haryo","Radithya")

  //required

  // Car(name:"Ferrarri", madein:"Thailand",ccMobil:"1500c",
  //     previousowner: "Deddy Corbuzier");

  //kenapa flutter pakenya optional named? dan pake required supaya jelas aja
  //jadi ketika masukkin suatu

  //getter and setters?

  var GFG = Gfg();
  // GFG.geekName=//tidak bisa diakses karena private;
  var nama = GFG.getName;
  GFG.setName = "Danu";
  print(nama);
  // GFG.name="Dina";
  // gunanya untuk memanipulasi behavior ketika ngambil
  // sama untuk set gunanya dulu untuk apa ?? untuk misal bug tracing

  //;ets move on to flutter
}

void getString() {
  print("Hello world 2");
}

void getString2() {
  print("Hello world 3");
}

//functionn
//optional parameter ada 2 yaitu [], dan {}

int pow(int x, [int y = 2]) {
  int r = 1;
  for (int i = 0; i < y; i++) {
    r *= x;
  }
  return r;
}

String info(String name, {String? occupation = " "}) {
  // ga pake default value juga gpp
  return "$name is a $occupation";
}
