import 'package:bmw/profil.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
class arac_Ekleme extends StatefulWidget {
  const arac_Ekleme({Key? key}) : super(key: key);

  @override
  State<arac_Ekleme> createState() => _arac_EklemeState();
}

class _arac_EklemeState extends State<arac_Ekleme> {
  File? _image;
  File? resim;
  File? resim2;

  Future<void> _getImage(ImageSource source) async {
    final pickedImage = await ImagePicker().pickImage(source: source);

    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }
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
              child: Text('Yeni Araç Ekleme',
                style: TextStyle(color: Colors.black),
              ),
            ),
            backgroundColor:Colors.white60 ,

          ),
          body: Column(
            children: [
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
                    child:  Padding(padding: EdgeInsets.only(top: 20,left: 15,right: 15),
                      child: Column(
                        children: [
                          Text("Ruhsat fotoğrafınızı yükleyerek,aracınızın BMW Türkiye uygulamasında görünmesini sağlayabilirsiniz."),
                          Text(""),
                          Text("Ad,soyad plaka ve 17 haneli şasi numarası net görünecek şekilde,ruhsatınızın bir veya ihtiyaç duymanız halinde iki fotoğrafını çekip bizimle paylaşmanız yeterli."),
                          Text(""),
                          Text("Talebiniz en kkısa sürede değerlendirilecek ve sizlere dönüş sağlanacaktır."),
                          Text(""),
                        ],
                      ),
                    ),
                  ),
              ),
              Padding(padding: EdgeInsets.only(top: 25),
              child: Text("Ruhsat Fotoğrafınızı Yükleyin: ", style: TextStyle(
                   fontWeight: FontWeight.bold, fontSize: 17),),
              ),
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            children: [
              Column(children: [
                Padding(padding: EdgeInsets.only(top: 50)),
                resim != null
                    ? GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            height: 200,
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Text(
                                  "Resim Seç",
                                  style: TextStyle(fontSize: 15),
                                ),
                                TextButton(
                                    onPressed: () async {
                                      final picker = await ImagePicker()
                                          .pickImage(
                                          source: ImageSource.gallery);

                                      setState(() {
                                        resim = File(picker!.path);
                                      });
                                      Navigator.pop(context);
                                    },
                                    child: Text("Galeriden",)),
                                TextButton(
                                    onPressed: () async {
                                      final picker = await ImagePicker()
                                          .pickImage(
                                          source: ImageSource.camera);

                                      setState(() {
                                        resim = File(picker!.path);
                                      });
                                      Navigator.pop(context);
                                    },
                                    child: Text("Kameradan"))
                              ],
                            ),
                          );
                        });
                  },
                  child: SizedBox(
                    height: 80,
                    width: MediaQuery.of(context).size.width/2.8,
                    child: CircleAvatar(
                      backgroundImage: FileImage(resim!),
                      radius: 100,
                    ),
                  ),
                )
                    : GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Container(
                            height: 200,
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Text(
                                  "Resim Seç",
                                  style: TextStyle(fontSize: 15),
                                ),
                                TextButton(
                                    onPressed: () async {
                                      final picker = await ImagePicker()
                                          .pickImage(
                                          source: ImageSource.gallery);

                                      setState(() {
                                        resim = File(picker!.path);
                                      });
                                      Navigator.pop(context);
                                    },
                                    child: Text("Galeriden")),
                                TextButton(
                                    onPressed: () async {
                                      final picker = await ImagePicker()
                                          .pickImage(
                                          source: ImageSource.camera);

                                      setState(() {
                                        resim = File(picker!.path);
                                      });
                                      Navigator.pop(context);
                                    },
                                    child: Text("Kameradan"))
                              ],
                            ),
                          );
                        });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        //color: Color(0xE1B2B2B2),
                        color: Color(0xCCD5D5DA),
                        border: Border.all(
                          color: Colors.black54,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.horizontal(),

                    ),
                    width: 140,
                    height: 100,
                    child: Column(
                      children: [
                        Text(""),
                        Icon( Icons.add) ,
                        Text(""),
                        Text("1.Fotoğraf"),

                      ],
                    ),
                  ),
                ),

                  ],
                ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Column(children: [
                  Padding(padding: EdgeInsets.only(top: 50)),
                  resim2 != null
                      ? GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              height: 200,
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Text(
                                    "Resim Seç",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  TextButton(
                                      onPressed: () async {
                                        final picker = await ImagePicker()
                                            .pickImage(
                                            source: ImageSource.gallery);

                                        setState(() {
                                          resim2 = File(picker!.path);
                                        });
                                        Navigator.pop(context);
                                      },
                                      child: Text("Galeriden")),
                                  TextButton(
                                      onPressed: () async {
                                        final picker = await ImagePicker()
                                            .pickImage(
                                            source: ImageSource.camera);

                                        setState(() {
                                          resim2 = File(picker!.path);
                                        });
                                        Navigator.pop(context);
                                      },
                                      child: Text("Kameradan"))
                                ],
                              ),
                            );
                          });
                    },
                    child: SizedBox(
                      height: 80,
                      width: MediaQuery.of(context).size.width/2.8,
                      child: CircleAvatar(
                        backgroundImage: FileImage(resim2!),
                        radius: 100,
                      ),
                    ),
                  )
                      : GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              height: 200,
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Text(
                                    "Resim Seç",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  TextButton(
                                      onPressed: () async {
                                        final picker = await ImagePicker()
                                            .pickImage(
                                            source: ImageSource.gallery);

                                        setState(() {
                                          resim2 = File(picker!.path);
                                        });
                                        Navigator.pop(context);
                                      },
                                      child: Text("Galeriden")),
                                  TextButton(
                                      onPressed: () async {
                                        final picker = await ImagePicker()
                                            .pickImage(
                                            source: ImageSource.camera);

                                        setState(() {
                                          resim2 = File(picker!.path);
                                        });
                                        Navigator.pop(context);
                                      },
                                      child: Text("Kameradan"))
                                ],
                              ),
                            );
                          });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        //color: Color(0xE1B2B2B2),
                        color: Color(0xCCD5D5DA),
                        border: Border.all(
                          color: Colors.black54,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.horizontal(),

                      ),
                      width: 140,
                      height: 100,
                        child: Column(
                          children: [
                            Text(""),
                            Icon( Icons.add) ,
                            Text(""),
                            Text("2.Fotoğraf"),
                            Text("(Opsiyonel)"),

                          ],
                        ),

                    ),
                  ),

                ],
                ),
              ),

            ],
          ),
        ),
    ),
              Padding(padding: EdgeInsets.only(top: 180,left: 20,right: 20),child:SizedBox(
                width: 600,
                height: 40,
                child: ElevatedButton(onPressed: (){
                //  Navigator.push(context,MaterialPageRoute(builder: (context)=>anasayfa()));
                }, child: Text("Gönder"),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey
                  ),),
              ),
              ),
   ] ),
    ),
    );
  }
}
