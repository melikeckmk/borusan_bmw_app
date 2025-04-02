import 'package:bmw/fiyat_Teklifi.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'main.dart';


class homeSayfam extends StatefulWidget {
  const homeSayfam({super.key});

  @override
  State<homeSayfam> createState() => _homeSayfamState();
}

class _homeSayfamState extends State<homeSayfam> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,


      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top:70,left: 10,right: 10,),
              child: Container(

                width: 400,
                height: 100,
                color:  Color(0xFF1c0f45),

                // margin: EdgeInsets.fromLTRB(25,60,10,300),
                padding: EdgeInsets.all(15),
                child:  SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),
                              child: CircleAvatar(
                                child: ClipOval(
                                  child: Image.asset(
                                    'images/p.jpeg',
                                    width: 150, // Görüntünün genişliği
                                    height: 120, // Görüntünün yüksekliği
                                  ),
                                ),
                              )
                          ),
                          Text(
                            // textAlign: TextAlign.center,
                            " BMW Türkiye'ye Hoş Geldiniz",

                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
                          ),

                        ],

                      ),
                      Padding(padding: EdgeInsets.only(right: 185,),
                        child: TextButton(onPressed: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>MyApp()));
                        },
                          child: Text("Giriş Yapın >",style: TextStyle(fontSize: 15,color: Colors.white),),

                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 30),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 15),
                    CircleAvatar(
                      radius: 35.0,
                      backgroundImage: AssetImage('images/o.jpg'),
                    ),
                    SizedBox(width: 15),
                    CircleAvatar(
                      radius: 35.0,
                      backgroundImage: AssetImage('images/t.png'),
                    ),
                    SizedBox(width: 15),
                    CircleAvatar(
                      radius: 35.0,
                      backgroundImage: AssetImage('images/p.png'),
                    ),
                    SizedBox(width: 15),
                    CircleAvatar(
                      radius: 35.0,
                      backgroundImage: AssetImage('images/u.png'),
                    ),
                    SizedBox(width: 15),
                    CircleAvatar(
                      radius: 35.0,
                      backgroundImage: AssetImage('images/f.png'),
                    ),
                    SizedBox(width: 15),
                    CircleAvatar(
                      radius: 35.0,
                      backgroundImage: AssetImage('images/c.png'),
                    ),
                  ],
                ),
              ),
            ),

            Padding(padding: EdgeInsets.only(top: 30),
              child:Text("Hangi modelden fiyat teklifi almak istersiniz ?",   style: TextStyle(
                  color: Color(0xFF1c0f45), fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),


            deneme(context),

          ],
        ),

      ),

    );

  }


}


Widget deneme(context){
  return SizedBox(
    height: MediaQuery.of(context).size.height*.5,
    child: GridView.count(crossAxisCount: 2,children: [

      Column(
        children: [
          Card(
            elevation: 4,
            margin: EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>fiyat_Teklifi()));
              },
              splashColor: Color(0xFF1c0f45),
              child: SizedBox(
                //  width: 10, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                //  height: 100,
                child:
                Image.asset('images/z.png',fit: BoxFit.cover,
                  //width: 300, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                  // height: 180,
                ),
                //  Coupe

              ),
            ),

          ),
          Padding(padding: EdgeInsets.only(top: 15),
            child: Text("CABRİO",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xFF1c0f45)),
            ),
          ) ],
      ),
      Column(
        children: [
          Card(
            elevation: 4,
            margin: EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>fiyat_Teklifi()));
              },
              splashColor: Color(0xFF1c0f45),
              child: SizedBox(
                //  width: 10, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                //  height: 100,
                child:
                Image.asset('images/y.png',fit: BoxFit.cover,
                  //width: 300, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                  // height: 180,
                ),
                //Coupe

              ),
            ),

          ),
          Padding(padding: EdgeInsets.only(top: 15),
            child: Text("COUPE",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xFF1c0f45)),
            ),
          ) ],
      ),
      Column(
        children: [
          Card(
            elevation: 4,
            margin: EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>fiyat_Teklifi()));
              },
              splashColor: Color(0xFF1c0f45),
              child: SizedBox(
                //  width: 10, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                //  height: 100,
                child:
                Image.asset('images/m.png',fit: BoxFit.cover,
                  //width: 300, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                  // height: 180,
                ),
                //Coupe

              ),
            ),

          ),
          Padding(padding: EdgeInsets.only(top: 15),
            child: Text("HATCHBACK",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xFF1c0f45)),
            ),
          ) ],
      ),
      Column(
        children: [
          Card(
            elevation: 4,
            margin: EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>fiyat_Teklifi()));
              },
              splashColor: Color(0xFF1c0f45),
              child: SizedBox(
                //  width: 10, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                //  height: 100,
                child:
                Image.asset('images/r.png',fit: BoxFit.cover,
                  //width: 300, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                  // height: 180,
                ),
                //Coupe

              ),
            ),

          ),
          Padding(padding: EdgeInsets.only(top: 15),
            child: Text("ROADSTER",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xFF1c0f45)),
            ),
          ) ],
      ),
      Column(
        children: [
          Card(
            elevation: 4,
            margin: EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>fiyat_Teklifi()));
              },
              splashColor: Color(0xFF1c0f45),
              child: SizedBox(
                //  width: 10, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                //  height: 100,
                child:
                Image.asset('images/m.png',fit: BoxFit.cover,
                  //width: 300, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                  // height: 180,
                ),
                //Coupe

              ),
            ),

          ),
          Padding(padding: EdgeInsets.only(top: 15),
            child: Text("HATCHBACK",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xFF1c0f45)),
            ),
          ) ],
      ),
      Column(
        children: [
          Card(
            elevation: 4,
            margin: EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>fiyat_Teklifi()));
              },
              splashColor: Color(0xFF1c0f45),
              child: SizedBox(
                //  width: 10, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                //  height: 100,
                child:
                Image.asset('images/b.png',fit: BoxFit.cover,
                  //width: 300, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                  // height: 180,
                ),
                //Coupe

              ),
            ),

          ),
          Padding(padding: EdgeInsets.only(top: 15),
            child: Text("SEDAN",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xFF1c0f45)),
            ),
          ) ],
      ),
      Column(
        children: [
          Card(
            elevation: 4,
            margin: EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>fiyat_Teklifi()));
              },
              splashColor: Color(0xFF1c0f45),
              child: SizedBox(
                //  width: 10, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                //  height: 100,
                child:
                Image.asset('images/a.png',fit: BoxFit.cover,
                  //width: 300, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                  // height: 180,
                ),
                //Coupe

              ),
            ),

          ),
          Padding(padding: EdgeInsets.only(top: 15),
            child: Text("STATİON WAGON",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xFF1c0f45)),
            ),
          ) ],
      ),
      Column(
        children: [
          Card(
            elevation: 4,
            margin: EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>fiyat_Teklifi()));
              },
              splashColor: Color(0xFF1c0f45),
              child: SizedBox(
                //  width: 10, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                //  height: 100,
                child:
                Image.asset('images/x.png',fit: BoxFit.cover,
                  //width: 300, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                  // height: 180,
                ),
                //Coupe

              ),
            ),

          ),
          Padding(padding: EdgeInsets.only(top: 15),
            child: Text("SUV",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xFF1c0f45)),
            ),
          ) ],
      ),


    ],),

  );

}