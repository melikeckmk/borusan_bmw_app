import 'package:bmw/main.dart';
import 'package:flutter/material.dart';

import 'diger.dart';
class profilim extends StatefulWidget {
  const profilim({Key? key}) : super(key: key);

  @override
  State<profilim> createState() => _profilimState();
}

class _profilimState extends State<profilim> {
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
          Navigator.push(context, MaterialPageRoute(builder: (context)=>diger()));
        },icon: Icon(Icons.chevron_left,size: 40.0,),  ),
        title: Center(
          child: Text('Profilim',
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor:Colors.white60 ,

      ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(padding: EdgeInsets.only(top: 15,),
                child: Container(

                  decoration: BoxDecoration(
                    //color: Color(0xE1B2B2B2),
                    color: Colors.white,
                    //  border: Border.all(
                    //   color: Colors.black54,
                    //    width: 1.0,
                    //  ),
                    borderRadius: BorderRadius.horizontal(),
                  ),
                  child:  Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 10,left: 15,right: 15),
                        child:Row(
                          children: [
                            Icon(Icons.person,size: 30.0,color:Color(0xFF1c0f45),),
                            Center(child: Text("    Melike Çakmak",textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, )),),
                          ],
                        ),
                ),
                      Text("melike.ckmk@gmail.com                             ",style: TextStyle(fontSize: 14, )),
                      Text("05123456789                                                 ",style: TextStyle(fontSize: 14, )),
                      Text("         "),
                    ],
                  )
            ),
            ),
            SizedBox(
              width: 400,
              height: 50,
              child:
              OutlinedButton.icon(
                // <-- OutlinedButton
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: CircleAvatar(
                          radius: 40.0,
                          backgroundColor: Color(0xFFFDCFB0),
                          child: ClipOval(
                            child: Icon(Icons.question_mark ,size: 50.0, color:Color(0xFF1c0f45) ,)
                          ),
                        ),
                        content: Text('Çıkış yapmak istediğinizden emin misiniz?'),
                        actions: [
                          Row(
                            children: [
                              Padding(padding: EdgeInsets.only(left: 8)),
                              SizedBox(
                                width: 130,
                                height: 40,
                                child:  ElevatedButton(
                                  onPressed: (){
                                    Navigator.of(context).pop();
                                  },
                                  child:  Text('Vazgeç',),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.black12, // İstenilen rengi burada ayarlayabilirsiniz
                                    textStyle: TextStyle(color: Colors.white),
                                  ),

                                ),
                              ),
                              Padding(padding: EdgeInsets.all(10.0)),
                              SizedBox(
                                width: 130,
                                height: 40,
                                child:  ElevatedButton(
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
                                  },
                                  child:  Text('Çıkış Yap'),
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xFF1c0f45), // İstenilen rengi burada ayarlayabilirsiniz
                                    textStyle: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),

                            ],
                          ),


                        ],
                      );
                    },
                  );
                },

                icon: Icon(
                  Icons.output,
                  size: 24.0,
                  color:Color(0xFF1c0f45) ,
                ),
                label: Text('Çıkış Yap',style: TextStyle(color:Color(0xFF1c0f45),fontSize: 17.0),),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 25,left: 15,right: 15),
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
