import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'diger.dart';

class iletisim_Merkezi extends StatefulWidget {
  const iletisim_Merkezi({Key? key}) : super(key: key);

  @override
  State<iletisim_Merkezi> createState() => _iletisim_MerkeziState();
}

class _iletisim_MerkeziState extends State<iletisim_Merkezi> {

  @override
  Widget build(BuildContext context) {
    String tel="0850 252 10 10";
    String tel2="4442299";
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
          child: Text('BMW İletişim Merkezi',
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor:Colors.white60 ,

      ),
        body: Column(
          children: [
            Image.asset('images/rr.jpg',fit: BoxFit.cover,),
            Padding(padding: EdgeInsets.only(top: 10,left: 10),
              child: Text("Bize telefonla ulaşmak istiyorsanız BMW İletişim Merkezi'mizi hafta içi 08.00-20.00,hafta sonu ise 09.00-18.30 saatleri arasında arayabilirsiniz. BMW        Acil Yol Yardım Hattı'na ise haftanın 7 günü,24 saat ulaşabilirsiniz.",style: TextStyle(fontSize: 15),),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            SizedBox(
              width: 400,
              height: 60,
              child:
              OutlinedButton.icon(
                // <-- OutlinedButton

                  onPressed: () {
                      String url =
                          'tel:$tel'; // Telefon arama URL'sini oluşturun

                       launch(url);
                  },

                icon: Icon(
                  Icons.phone,
                  size: 24.0,
                  color:Color(0xFF1c0f45) ,
                ),
                label: Center(
                  child: Column(
                    children: [
                      Text(""),
                      Text('BMW İletişim Merkezi',style: TextStyle(color:Color(0xFF1c0f45),fontSize: 17.0),),
                      Text("0850 252 10 10 ",style: TextStyle(color: Colors.black),),

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 400,
              height: 60,
              child:
              OutlinedButton.icon(
                // <-- OutlinedButton
                onPressed: () {
                  String url =
                      'tel:$tel2'; // Telefon arama URL'sini oluşturun

                  launch(url);
                },

                icon: Icon(
                  Icons.phone,
                  size: 24.0,
                  color:Color(0xFF1c0f45) ,
                ),
                label: Center(
                  child: Column(
                    children: [
                      Text(""),
                      Text('BMW Acil Yol Yardım Hattı',style: TextStyle(color:Color(0xFF1c0f45),fontSize: 17.0),),
                      Text("444 22 99 ",style: TextStyle(color: Colors.black),),

                    ],
                  ),
                ),
              ),
            ),





          ],
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
