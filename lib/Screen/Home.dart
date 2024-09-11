import 'package:flutter/material.dart';
import 'package:login/Login/Login.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Login()));
              },
              child: Icon(
                Icons.logout,
                color: Colors.white,
              ))
        ],
        leading: Builder(
          builder: (context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.menu,
                color: Colors.white,));
          },
        ),
        title: Text("Home"),
        backgroundColor: Colors.deepPurple,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text("Drawer Header")),
            ListTile(
              title: Text("Home"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Share"),
              onTap: () {},
            ),
            ListTile(
              title: Text("About"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/background.jpg"),
          fit: BoxFit.cover,
        )),
        child: ListView(
          children: [
            // Container(
            //   height: 300,
            //   width: 300,
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //         image: AssetImage("assets/images/home.png")),
            //   ),
            // ),
            SizedBox(
              height: 200,
            ),
            Column(

            ),
          ],
        ),
      ),
    );
  }
}
