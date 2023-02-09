import 'package:codigo6_shared/pages/home_page.dart';
import 'package:codigo6_shared/utils/sp_global.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); //Esto soluciona el error que se presenta al iniciar el app por el shared preference
  //Se coloca async por que hay un await esperando un future
  SPGlobal spGlobal = SPGlobal();
  await spGlobal.initSharedPreferences(); //Se coloca await por que es un future
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
