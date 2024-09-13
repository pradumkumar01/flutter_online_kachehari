import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:online_kachehri/screens/ChatHistoryWakeel.dart';
import 'package:online_kachehri/screens/CustomerSupport.dart';
import 'package:online_kachehri/screens/LiveWakeels.dart';
import 'package:online_kachehri/screens/TrendingBlogs.dart';

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
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return Customersupport();
                    }));
                  },child: Text("Customer support ",style: TextStyle(fontFamily: "serif",fontSize: 21,fontWeight: FontWeight.bold)),
                ),
              ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                  onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return Chathistorywakeel();
                    }));
                  },child: Text("Chat history  ",style: TextStyle(fontFamily: "serif",fontSize: 21,fontWeight: FontWeight.bold)),
                                ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                  onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return Trendingblogs();
                    }));
                  },child: Text("Trending blogs ",style: TextStyle(fontFamily: "serif",fontSize: 21,fontWeight: FontWeight.bold)),
                                ),
                ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: InkWell(
                  onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return Livewakeels();
                    }));
                  },child: Text("Live Lawyers ",style: TextStyle(fontFamily: "serif",fontSize: 21,fontWeight: FontWeight.bold)),
                               ),
               )

            ],
          ),
        ),
    );
  }
}
