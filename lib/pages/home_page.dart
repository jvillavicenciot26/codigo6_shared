import 'package:codigo6_shared/widgets/my_drawer_widgets.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = "";
  int age = 0;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  save() async {
    SharedPreferences mandarina = await SharedPreferences.getInstance();
    //Primer parametro = key o llave
    //Segundo parametro = valor amarrado a la llave
    mandarina.setString("name", _nameController.value.text);
    mandarina.setString("address", _addressController.value.text);
    mandarina.setString("email", _emailController.value.text);
    //mandarina.setInt("age", 30);
    print("Guardando ... ${_nameController.value.text}");
  }

  // getData() async {
  //   SharedPreferences mandarina = await SharedPreferences.getInstance();
  //   print(mandarina.getString("name"));
  //   name = mandarina.getString("name") ?? "-"; //Si es nulo se asigna - a name
  //   age = mandarina.getInt("age") ?? 0;
  //   setState(() {});
  // }

  Future<String> getName() async {
    SharedPreferences matasquita = await SharedPreferences.getInstance();
    return matasquita.getString("name") ?? "-";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preferences"),
      ),
      drawer: MyDrawerWidget(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 8.0),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 20.0,
                      offset: Offset(4, 4),
                    ),
                  ],
                ),
                child: TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    hintText: "Nombres",
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8.0),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 20.0,
                      offset: Offset(4, 4),
                    ),
                  ],
                ),
                child: TextField(
                  controller: _addressController,
                  decoration: InputDecoration(
                    hintText: "Direccion",
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.location_on,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 8.0),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 20.0,
                      offset: Offset(4, 4),
                    ),
                  ],
                ),
                child: TextField(
                  controller: _emailController,
                  // inputFormatters: Permite establecer el tipo de entrada en base a expresion regular
                  // RegExp("[0-9]") solo permite numeros
                  // inputFormatters: [
                  //   FilteringTextInputFormatter.allow(
                  //     RegExp("[0-9]"),
                  //   ),
                  // ],
                  decoration: InputDecoration(
                    hintText: "Email",
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  save();
                },
                child: Text(
                  "Guardar",
                ),
              ),
              // ElevatedButton(
              //   onPressed: () {
              //     getData();
              //   },
              //   child: Text(
              //     "Obtener",
              //   ),
              // ),
              // Text(
              //   name,
              // ),
              // FutureBuilder(
              //   future: getName(),
              //   builder: (BuildContext context, AsyncSnapshot snap) {
              //     if (snap.hasData) {
              //       return Text(snap.data);
              //     }
              //     return CircularProgressIndicator();
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
