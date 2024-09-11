import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text("Online Kachehari",style: TextStyle(fontFamily: "serif",fontSize: 21,fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
                Colors.blue.withOpacity(0.9),
                 Colors.lightBlue.withOpacity(0.3),
            ])
          ),
        ),
        ),
        bottomNavigationBar: BottomNavigationBar(
           backgroundColor:Colors.lightBlue,
          items:const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: "Home"),
           BottomNavigationBarItem(icon: Icon(Icons.info),
          label: "Forams"),
           BottomNavigationBarItem(icon: Icon(Icons.find_in_page),
          label: "Find"),
          
        ]
        ),
    );
  }
}
