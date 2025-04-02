import 'package:bmw/profil.dart';
import 'package:bmw/servis_islemleri.dart';
import 'package:flutter/material.dart';
class otomobil_Durumu extends StatefulWidget {
  const otomobil_Durumu({Key? key}) : super(key: key);

  @override
  State<otomobil_Durumu> createState() => _otomobil_DurumuState();
}

class _otomobil_DurumuState extends State<otomobil_Durumu> {
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
            Navigator.push(context, MaterialPageRoute(builder: (context)=>servis_islemleri()));
          },icon: Icon(Icons.chevron_left,size: 40.0,),  ),
          title: Center(
            child: Text('Servisteki Otomobil Durumu',
              style: TextStyle(color: Colors.black),
            ),
          ),
          backgroundColor:Colors.white60 ,

        ),
        body: Column(
            children: [
        Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Center(
          child: Icon(Icons.build,size: 70,),
        ),
      ),
      Padding(padding: EdgeInsets.only(left: 90),
        child: Icon(Icons.cancel,size: 50,),
      ),
      Padding(padding: EdgeInsets.only(top: 25,left: 95,right: 95),
        child: Text("   Otomobilinize ait servis durumu bulunmamaktadır. ", style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 17),),
      ),
    ]),
      ),
    );
  }
}
