class Car {
  //[] optional not named, {} optional named// pilih yang mana? pilih yang named aja suapaya lebih clear
  // Car(String name, String madein, [String? ccMobil, String? previousOwner]){
  //   print(name);
  //   print(madein);
  //   print(ccMobil);
  //   print(previousOwner);
  // }

  ///without optional parameter kalian harus nulis satu satu diulang terus
  //Cth in Java
  // to achive the same thing kira kira seperti ini
  // Car(String name, String madein, String ccMobil);
  //Car(string name, String madein);
  //Car(String name, String madein, String previousowner);
  //Car(String name. string madein.String previousowner,String ccmobil)

  //nulisnya 4 kali sementara di dart hanya sekali;
  // late String? name;
  // late String? madein;
  // tapi kan di flutter itu semuanya pake optional named dan kadanag wajib untuk diisi itu gimana?
  // Car(
  //     {this.name,
  //     this.madein,
  //     required String ccMobil,
  //     required String previousowner});

  //required itu hanya ada di optional karena kalau di luar udh pasti butuh
}

class Gfg {
  // Creating a Field/Property
  // final String geekName; // kalau ini di dalem class harus diinitialized tapi
  //kalau dalem function ga harus// this is not fine
  //unless we use late
  // late String helloworld;
  //  late String _geekName;// pake late atau pake nullable kalau pake late ga harus
  //dikasih tanda seru kalau pake null harus dikasih!
  String _geekName = "Dwika";
  
  // String name = "Fadil";

  // Creating the getter method
  // to get input from Field/Property
  String get getName {
    // karena ada fungsi bisa diedit behaviornya
    final String hello; //this is fine
    return _geekName + "keren";

    //bug tracing atau di log
    //print()
  }

  // Creating the setter method
  // to set the input in Field/Property
  set setName(String name) {
    if(name.length>2){
      _geekName = name;
    }

  }
}
