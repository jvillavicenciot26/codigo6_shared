import 'package:shared_preferences/shared_preferences.dart';

class SPGlobal {
  //las propiedades o metodos static son accesibles sin crear instancias
  // static int age = 30;
  // String name = "Juan Carlos";

  // static void getAge() {
  //   print("Hola");
  // }

  //Esto es un singleton
  //Estamos creando una instancia de la misma clase mediante un constructor que ya existe
  static SPGlobal _instace = SPGlobal.mandarina();
  SPGlobal.mandarina(); //Constructor con nombre

  //Esto es un tipo de constructor
  factory SPGlobal() {
    return _instace;
  }

  late SharedPreferences prefs; //late significa que luego tomara valor

  Future<void> initSharedPreferences() async {
    prefs = await SharedPreferences.getInstance();
  }

  set name(String value) {
    prefs.setString("name", value);
  }

  String get name {
    return prefs.getString("name") ?? "-";
  }

  set address(String value) {
    prefs.setString("address", value);
  }

  String get address {
    return prefs.getString("address") ?? "-";
  }

  set email(String value) {
    prefs.setString("email", value);
  }

  String get email {
    return prefs.getString("email") ?? "-";
  }
}
