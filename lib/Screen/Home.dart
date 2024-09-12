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
        backgroundColor: Colors.deepPurpleAccent,
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurpleAccent,
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40,bottom: 10),
              child: CircleAvatar(backgroundImage: AssetImage("assets/images/login.png"),
                radius: 80,
              ),
            ),
            Center(child: Text('Name',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 20),)),
            SizedBox(height: 10,),
            ListTile(
              leading: Icon(Icons.home,size: 50,color: Colors.white),
              title: Text('Home',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
              onTap: () {},
            ),
            ListTile(
              leading:Icon(Icons.account_circle_rounded,size: 50,color: Colors.white),
              title: Text('Profile',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
              onTap: () {},
            ),
            ListTile(
              leading:Icon(Icons.settings,size: 50,color: Colors.white),
              title: Text('Setting',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
              onTap: () {},
            ),
            ListTile(
              leading:Icon(Icons.message_outlined,size: 50,color: Colors.white),
              title: Text('Blogs',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
              onTap: () {},
            ),
            ListTile(
              leading:Icon(Icons.support_outlined,size: 50,color: Colors.white),
              title: Text('Support',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
              onTap: () {},
            ),
            Divider(color: Colors.white,),
            ListTile(
              leading:Icon(Icons.file_copy_outlined,size: 50,color: Colors.white),
              title: Text('Documents',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
              onTap: () {},
            ),
            ListTile(
              leading:Icon(Icons.policy,size: 50,color: Colors.white),
              title: Text('Policy',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
              onTap: () {},
            ),
            ListTile(
              leading:Icon(Icons.miscellaneous_services,size: 50,color: Colors.white),
              title: Text('Service',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
              onTap: () {},
            ),
            ListTile(
              leading:Icon(Icons.info_outline,size: 50,color: Colors.white),
              title: Text('About',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
              onTap: () {},
            ),
            ListTile(
              leading:Icon(Icons.filter_none,size: 50,color: Colors.white),
              title: Text('Terms & Condition',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
              onTap: () {},
            ),
            ListTile(
              leading:Icon(Icons.logout,size: 50,color: Colors.white),
              title: Text('Logout',style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
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
g