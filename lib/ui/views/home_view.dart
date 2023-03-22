import 'package:flutter/material.dart';
import 'package:flutter_app_components/ui/components/component_buttom.dart';
import 'package:flutter_app_components/ui/views/detail_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Components"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Column(
                children: const [
                  CircleAvatar(
                    radius: 40.0,
                    backgroundImage: NetworkImage(
                        "https://i.pinimg.com/474x/23/fd/f6/23fdf63ff25a80f35ac11a1b34b7d93a.jpg"),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    "Gustavo Quino",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "greentiperu@gmail.com",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
             ListTile(
              onTap: (){
               Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const DetailView(),
                  ),
                );
              },
              leading: const Icon(Icons.home_max),
              trailing: const Icon(Icons.arrow_forward_ios, size: 14, color: Colors.blue,),
              title: const Text(
                "Home",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Divider(
            ),
            const ListTile(
              leading: Icon(Icons.person_2_outlined),
               trailing: Icon(Icons.arrow_forward_ios, size: 14, color: Colors.blue,),
              title: Text(
                "Profile",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Divider(
            ),
            const ListTile(
              leading: Icon(Icons.dashboard_customize_rounded),
               trailing: Icon(Icons.arrow_forward_ios, size: 14, color: Colors.blue,),
              title: Text(
                "Dashboard",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Divider(
            ),
            const ListTile(
              leading: Icon(Icons.file_copy),
               trailing: Icon(Icons.arrow_forward_ios, size: 14, color: Colors.blue,),
              title: Text(
                "News",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          children: const [
             ListTile(
              leading: CircleAvatar(),
               trailing: Icon(Icons.phone, size: 14, color: Colors.blue,),
              title: Text(
                "Gustavo Quino",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle:  Text(
                "+51 958346375",
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
             ListTile(
              leading: CircleAvatar(),
               trailing: Icon(Icons.phone, size: 14, color: Colors.blue,),
              title: Text(
                "Gustavo Quino",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle:  Text(
                "+51 958346375",
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
             ListTile(
              leading: CircleAvatar(),
               trailing: Icon(Icons.phone, size: 14, color: Colors.blue,),
              title: Text(
                "Gustavo Quino",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle:  Text(
                "+51 958346375",
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
           /*  ComponentButtom(
              text: "Aceptar",
              onTapComponent: () {
                print("Click Aceptar");
              },
            ),
            ComponentButtom(
              text: "Cerrar sesión",
              onTapComponent: () {
                print("Click Cerrar sesión");
              },
            ),
            ComponentButtom(
              text: "Cancelar",
              onTapComponent: () {
                print("Click Cancelar");
              },
            ), */
          ],
        ),
      ),
    );
  }
}
