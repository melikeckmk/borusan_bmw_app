
import 'package:bmw/diger.dart';
import 'package:bmw/fiyatListesi.dart';
import 'package:bmw/ilk.dart';
import 'package:bmw/profil.dart';
import 'package:bmw/uyeOl.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';


//import 'first_page.dart';
//import 'second_page.dart';
//import 'third_page.dart';

void main() {
  runApp(anasayfa());
}

class anasayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Bar Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> sayfalar = [
    homeSayfam(),
    profil(),
    fiyatListesi(),
    diger(),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: sayfalar[_currentIndex],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            title: Text('Ana sayfa',style: TextStyle(color:Color(0xFF1c0f45) ),),
            //activeColor: Color(0xFF1c0f45),
            activeColor: Colors.white,
            icon: Icon(Icons.home,color: Color(0xFF1c0f45),),
          ),
          BottomNavyBarItem(
            title: Text('My BMW',style: TextStyle(color: Color(0xFF1c0f45) ),),
            icon: Icon(Icons.directions_car,color:Color(0xFF1c0f45) ,),
            activeColor: Colors.white,
          ),
          BottomNavyBarItem(
            title: Text('Fiyat Listesi',style: TextStyle(color: Color(0xFF1c0f45) ),),
            icon: Icon(Icons.list,color:Color(0xFF1c0f45),),
            activeColor: Colors.white,
          ),
          BottomNavyBarItem(
            title: Text('Diğer',style: TextStyle(color: Color(0xFF1c0f45) ),),
            icon:Icon(Icons.more_horiz,color:Color(0xFF1c0f45),),
            activeColor: Colors.white,
          ),
        ],
      ),
    );
  }
}