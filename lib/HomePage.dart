import 'package:flutter/material.dart';
import 'package:index_stack/widgets/FirstScreen.dart';
import 'package:index_stack/widgets/SecondScreen.dart';
import 'package:index_stack/widgets/ThiredScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int pageIndex = 0;
  List<Widget> pages =[
    FirstScreen(),
    SecondScreen(),
    ThiredScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Index Stack Example"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: IndexedStack(
          index: pageIndex,
          children: pages,
        ),
      ),
      
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
        ],
        currentIndex:pageIndex ,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.deepOrangeAccent,
        onTap: (index){
          setState(() {
            pageIndex= index;
          });
        },
      ),

     
    );
  }
}
