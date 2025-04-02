import 'package:bmw/profil.dart';
import 'package:flutter/material.dart';
class siparis_Durumu extends StatefulWidget {
  const siparis_Durumu({Key? key}) : super(key: key);

  @override
  State<siparis_Durumu> createState() => _siparis_DurumuState();
}

class _siparis_DurumuState extends State<siparis_Durumu> {
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
            child: Text('Sipariş Durumu',
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
                child: Icon(Icons.directions_car,size: 70,),
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 90),
            child: Icon(Icons.cancel,size: 50,),
            ),
            Padding(padding: EdgeInsets.only(top: 25,left: 70,right: 70),
              child: Text("   Sistemimizde kayıtlı yeni otomobiliniz bulunmamaktadır. ", style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 17),),
            ),
            Padding(padding: EdgeInsets.only(top: 40,left: 15,right: 15),
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
                  child:  Padding(padding: EdgeInsets.only(top: 10,left: 15,right: 15),
                    child: Column(
                      children: [
                        Text("BMW İletişim Merkezi'ni 0850 252 10 10 numaralı telefondan arayarak bilgilerinizin kontrolünü ve güncellenmesini talep edebilirsiniz.",style: TextStyle(fontSize: 15,),),
                        Text(""),
                      ],
                    ),
                  ),
                )
            ),

          ],
        ),
    ),
    );
  }
}
