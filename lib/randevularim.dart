import 'package:bmw/profil.dart';
import 'package:bmw/randevu_Al.dart';
import 'package:bmw/servis_islemleri.dart';
import 'package:flutter/material.dart';
class randevularim extends StatefulWidget {
  const randevularim({Key? key}) : super(key: key);

  @override
  State<randevularim> createState() => _randevularimState();
}

class _randevularimState extends State<randevularim> {
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
            child: Text('Randevu Bilgilerim',
              style: TextStyle(color: Colors.black),
            ),
          ),
          backgroundColor:Colors.white60 ,

        ),
        body: Center(
          child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Center(
                    child: Icon(Icons.calendar_today,size: 70,),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 90),
                  child: Icon(Icons.cancel,size: 50,),
                ),
                Padding(padding: EdgeInsets.only(top: 25,),
                  child: Text(" Randevunuz bulunmamaktadır.", style: TextStyle(
                     // fontWeight: FontWeight.bold,
                      fontSize: 17),),
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
                            Text("Randevu almak ister misiniz ?",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
                            Padding(padding: EdgeInsets.only(top: 20,left: 20,right: 20),child:SizedBox(
                              width: 500,
                              height: 40,
                              child: ElevatedButton(onPressed: (){
                                Navigator.push(context,MaterialPageRoute(builder: (context)=>randevu_Al()));
                              }, child: Text("Randevu Al"),
                                style: ElevatedButton.styleFrom(
                                    primary:  Colors.grey
                                ),),
                            ),
                            ),
                            Text(""),
                          ],
                        ),
                      ),
                    )
                ),
              ]),
        ),
      ),
    );
  }
}
