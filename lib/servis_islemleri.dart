import 'package:bmw/otomobil_Durumu.dart';
import 'package:bmw/profil.dart';
import 'package:bmw/randevu_Al.dart';
import 'package:bmw/randevularim.dart';
import 'package:flutter/material.dart';
class servis_islemleri extends StatefulWidget {
  const servis_islemleri({Key? key}) : super(key: key);

  @override
  State<servis_islemleri> createState() => _servis_islemleriState();
}

class _servis_islemleriState extends State<servis_islemleri> {
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
            Navigator.push(context, MaterialPageRoute(builder: (context)=>profil()));
          },icon: Icon(Icons.chevron_left,size: 40.0,),  ),
          title: Center(
            child: Text('Servis İşlemlerim',
              style: TextStyle(color: Colors.black),
            ),
          ),
          backgroundColor:Colors.white60 ,

        ),
        body: Column(
          children: [
            SizedBox(
              width: 400,
              height: 80,
              child:
              OutlinedButton.icon(
                // <-- OutlinedButton
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>randevu_Al()));
                },
                icon: Icon(
                    Icons.phone_android,
                    size: 24.0,
                    color:Colors.black
                ),
                label: Text('Randevu Al',style: TextStyle(color:Colors.black,fontSize: 17.0),),
              ),
            ),
            SizedBox(
              width: 400,
              height: 80,
              child:
              OutlinedButton.icon(
                // <-- OutlinedButton
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>randevularim()));
                },
                icon: Icon(
                    Icons.calendar_today,
                    size: 24.0,
                    color:Colors.black
                ),
                label: Text('Randevularım',style: TextStyle(color:Colors.black,fontSize: 17.0),),
              ),
            ),
            SizedBox(
              width: 400,
              height: 80,
              child:
              OutlinedButton.icon(
                // <-- OutlinedButton
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>otomobil_Durumu()));
                },
                icon: Icon(
                    Icons.build,
                    size: 24.0,
                    color:Colors.black
                ),
                label: Text('Servisteki Otomobil Durumu',style: TextStyle(color:Colors.black,fontSize: 17.0),),
              ),
            ),
          ],
        ),
    ),
    );
  }
}
