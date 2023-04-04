

import 'package:flutter/material.dart';
import 'package:joing_app/views/home_view.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    int currentIndex=0;
    final screen=[
     HomeView(),
      Center(child: Text('Feed',style: TextStyle(fontSize: 22,),),),
      Center(child: Text('Chat',style: TextStyle(fontSize: 22,),),),
      Center(child: Text('Profile',style: TextStyle(fontSize: 22,),),),
    ];
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('salam',style: TextStyle(color: Colors.black12),),
      // ),
      body: screen[currentIndex],
     bottomNavigationBar: BottomNavigationBar(
    onTap: (index)=>currentIndex=index,
     currentIndex: currentIndex,
     backgroundColor: Colors.blue,
     selectedItemColor: Colors.purple,
     unselectedItemColor: Colors.black,
     iconSize: 36,
     //selectedFontSize: 16,
     //unselectedFontSize: 12,
     showSelectedLabels: false,
     showUnselectedLabels: false,
      items: [
     BottomNavigationBarItem(
       backgroundColor: Colors.blue,
    
        icon: Icon(Icons.home,color: Colors.red,),
        label: 'Home',
      ),
      
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
         label: 'Feed',
          
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
          label: 'Chat'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
          label:'Profile'
          ),
     ]),
     
    );
  }
}