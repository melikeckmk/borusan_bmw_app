import 'package:bmw/anasayfa.dart';
import 'package:bmw/bmw_Haritasi.dart';
import 'package:bmw/iletisim_Destek.dart';
import 'package:bmw/profilim.dart';
import 'package:bmw/rezervasyon.dart';
import 'package:bmw/servis_islemleri.dart';
import 'package:bmw/test_Surusu.dart';
import 'package:bmw/yetkili_Saticilar.dart';
import 'package:bmw/yetkili_Servisler.dart';
import 'package:flutter/material.dart';


class diger extends StatelessWidget {
  const diger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black), // Icon rengini değiştir
        ),
      ),
    home: Scaffold(
      appBar: AppBar(

        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>anasayfa()));
        },icon: Icon(Icons.chevron_left,size: 40.0,),  ),
        title: Center(
          child: Text('Diğer',
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor:Colors.white60 ,

      ),
      body:
       Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 1)),
            SizedBox(
              width: 400,
              height: 50,
              child:
              OutlinedButton.icon(
                // <-- OutlinedButton
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>test_Surusu()));
                },
                icon: Icon(
                  Icons.directions_car,
                  size: 24.0,
                  color:Color(0xFF1c0f45) ,
                ),
                label: Text('Test Sürüşü',style: TextStyle(color:Color(0xFF1c0f45),fontSize: 17.0),),

              ),
            ),

            SizedBox(
              width: 400,
              height: 50,
              child:
              OutlinedButton.icon(
                // <-- OutlinedButton
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>yetkili_Servisler()));
                },
                icon: Icon(
                  Icons.pin_drop,
                  size: 24.0,
                  color:Color(0xFF1c0f45) ,
                ),
                label: Text('Yetkili Servisler',style: TextStyle(color:Color(0xFF1c0f45),fontSize: 17.0),),
              ),
            ),
            SizedBox(
              width: 400,
              height: 50,
              child:
              OutlinedButton.icon(
                // <-- OutlinedButton
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>yetkili_Saticilar()));
                },
                icon: Icon(
                  Icons.place,
                  size: 24.0,
                  color:Color(0xFF1c0f45) ,
                ),
                label: Text('Yetkili Satıcılar',style: TextStyle(color:Color(0xFF1c0f45),fontSize: 17.0),),
              ),
            ),
            SizedBox(
              width: 400,
              height: 50,
              child:
              OutlinedButton.icon(
                // <-- OutlinedButton
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>bmw_Haritasi()));
                },
                icon: Icon(
                  Icons.power,
                  size: 24.0,
                  color:Color(0xFF1c0f45) ,
                ),
                label: Text('BMW Şarj Haritası',style: TextStyle(color:Color(0xFF1c0f45),fontSize: 17.0),),
              ),
            ),
            SizedBox(
              width: 400,
              height: 50,
              child:
              OutlinedButton.icon(
                // <-- OutlinedButton
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>profilim()));
                },
                icon: Icon(
                  Icons.person,
                  size: 24.0,
                  color:Color(0xFF1c0f45) ,
                ),
                label: Text('Profilim',style: TextStyle(color:Color(0xFF1c0f45),fontSize: 17.0),),
              ),
            ),
            SizedBox(
              width: 400,
              height: 50,
              child:
              OutlinedButton.icon(
                // <-- OutlinedButton
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>rezervasyon()));
                },
                icon: Icon(
                  Icons.my_library_books,
                  size: 24.0,
                  color:Color(0xFF1c0f45) ,
                ),
                label: Text('Rezervasyonlarım',style: TextStyle(color:Color(0xFF1c0f45),fontSize: 17.0),),
              ),
            ),
            SizedBox(
              width: 400,
              height: 50,
              child:
              OutlinedButton.icon(
                // <-- OutlinedButton
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>iletisim_Destek()));
                },
                icon: Icon(
                  Icons.phone,
                  size: 24.0,
                  color:Color(0xFF1c0f45) ,
                ),
                label: Text('İletişim ve Destek',style: TextStyle(color:Color(0xFF1c0f45),fontSize: 17.0),),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
