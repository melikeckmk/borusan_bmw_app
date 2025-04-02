import 'package:bmw/anasayfa.dart';
import 'package:bmw/arac_Ekleme.dart';
import 'package:bmw/servis_islemleri.dart';
import 'package:bmw/siparis_Durumu.dart';
import 'package:flutter/material.dart';
class profil extends StatefulWidget {
  const profil({Key? key}) : super(key: key);

  @override
  State<profil> createState() => _profilState();
}

class _profilState extends State<profil> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black), // Icon rengini değiştir
        ),
      ),
      home: Scaffold(

        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60,right: 350),
                child: IconButton(
                  icon: Icon(Icons.chevron_left,size: 40.0,),
                  onPressed: () {
                    // İşlemler burada gerçekleştirilir
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>anasayfa()));
                  },
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 15),child:Center(
                child: Image.asset(
                  'images/p.jpeg',
                  width: 100, // Görüntünün genişliği
                  height: 120, // Görüntünün yüksekliği
                ),
              ), ),

              Padding(padding: EdgeInsets.only(top: 10,left: 20),
              child: Text('My BMW',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),) ,
              ),
              Padding(padding: EdgeInsets.only(top: 15,left: 15,right: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      //color: Color(0xE1B2B2B2),
                      color: Color(0xCCD5D5DA),
                    //  border: Border.all(
                     //   color: Colors.black54,
                    //    width: 1.0,
                    //  ),
                      borderRadius: BorderRadius.horizontal(),
                    ),
                    child:  Padding(padding: EdgeInsets.only(top: 20,left: 15,right: 15),
                      child: Column(
                        children: [
                          Text("Daha fazla özellikten faydalanmak için lütfen araç ekleyiniz.",style: TextStyle(fontSize: 15),),
                          Text(""),
                        ],
                      ),
                    ),
                  )
              ),

              Padding(padding: EdgeInsets.only(top: 50)),
              SizedBox(
                width: 400,
                height: 50,
                child:
                OutlinedButton.icon(
                  // <-- OutlinedButton
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>arac_Ekleme()));
                  },
                  icon: Icon(
                      Icons.directions_car,
                      size: 24.0,
                      color:Color(0xFF1c0f45)
                  ),
                  label: Text('Yeni Araç Ekleme',style: TextStyle(color:Color(0xFF1c0f45),fontSize: 17.0),),
                ),
              ),
              SizedBox(
                width: 400,
                height: 50,
                child:
                OutlinedButton.icon(
                  // <-- OutlinedButton
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>servis_islemleri()));
                  },
                  icon: Icon(
                    Icons.miscellaneous_services,
                    size: 24.0,
                    color:Color(0xFF1c0f45)
                  ),
                  label: Text('Servis İşlemlerim',style: TextStyle(color:Color(0xFF1c0f45),fontSize: 17.0),),
                ),
              ),
              SizedBox(
                width: 400,
                height: 50,
                child:
                OutlinedButton.icon(
                  // <-- OutlinedButton
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>siparis_Durumu()));
                  },
                  icon: Icon(
                    Icons.add_shopping_cart,
                    size: 24.0,
                    color:Color(0xFF1c0f45)
                  ),
                  label: Text('Sipariş Durumu',style: TextStyle(color:Color(0xFF1c0f45),fontSize: 17.0),),
                ),
              ),




          ]
      ),
        )
      ),
    );
  }
}
