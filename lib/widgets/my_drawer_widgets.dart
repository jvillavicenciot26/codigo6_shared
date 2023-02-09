import 'package:codigo6_shared/pages/profile_page.dart';
import 'package:flutter/material.dart';

class MyDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.amber,
              image: DecorationImage(
                  image: NetworkImage(
                    "https://images.pexels.com/photos/4969107/pexels-photo-4969107.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  ),
                  fit: BoxFit.cover),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.indigo,
                  radius: 36.0,
                  backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/1065084/pexels-photo-1065084.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "Fiorella Montes Gonzales",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "fiorellamontes@gmail.com",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.person,
            ),
            title: Text(
              "Mi Perfil",
            ),
            onTap: () {
              Navigator.pop(
                  context); //Permite que al regresar a la pantalla principal ya no aparezca el drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilePage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
            ),
            title: Text(
              "Configuracion",
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.price_change,
            ),
            title: Text(
              "Mis ventas",
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.pie_chart,
            ),
            title: Text(
              "Reportes",
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
            ),
            title: Text(
              "Cerrar Sesion",
            ),
          ),
        ],
      ),
    );
  }
}
