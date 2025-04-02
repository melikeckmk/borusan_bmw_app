import 'package:bmw/diger.dart';
import 'package:bmw/iletisim_Formu.dart';
import 'package:bmw/iletisim_Merkezi.dart';
import 'package:bmw/profilim.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class iletisim_Destek extends StatefulWidget {
  const iletisim_Destek({Key? key}) : super(key: key);

  @override
  State<iletisim_Destek> createState() => _iletisim_DestekState();
}

class _iletisim_DestekState extends State<iletisim_Destek> {
  @override
  Widget build(BuildContext context) {
    String tel=" ";
    return MaterialApp(
        theme: ThemeData(
        appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black), // Icon rengini değiştir
    ),
    ),
    home: Scaffold(
      appBar: AppBar(

        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>diger()));
        },icon: Icon(Icons.chevron_left,size: 40.0,),  ),
        title: Center(
          child: Text('İletişim Ve Destek',
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor:Colors.white60 ,

      ),
        body: Column(
          children: [

            Padding(padding: EdgeInsets.only(top: 1)),
            SizedBox(
              width: 400,
              height: 60,
              child:
              OutlinedButton.icon(
                // <-- OutlinedButton
                onPressed: () {
                //  String url =
                //      'tel:$tel'; // Telefon arama URL'sini oluşturun
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>iletisim_Merkezi()));
               //   launch(url);
                },
                icon: Icon(
                  Icons.phone,
                  size: 24.0,
                  color:Color(0xFF1c0f45) ,
                ),
                label: Text('BMW İletişim Merkezi',style: TextStyle(color:Color(0xFF1c0f45),fontSize: 17.0),),
              ),
            ),
            SizedBox(
              width: 400,
              height: 60,
              child:
              OutlinedButton.icon(
                // <-- OutlinedButton
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>iletisim_Formu()));
                },
                icon: Icon(
                  Icons.thumb_up,
                  size: 24.0,
                  color:Color(0xFF1c0f45) ,
                ),
                label: Text('İletişim Formu',style: TextStyle(color:Color(0xFF1c0f45),fontSize: 17.0),),
              ),
            ),

       ]
        ),

    ),
    );
    
  }
  _callcontact(tel) async {
    String telefon = "telefon:$tel";
    if (await canLaunch(telefon)) {
      launch(telefon);
    }
  }
}
