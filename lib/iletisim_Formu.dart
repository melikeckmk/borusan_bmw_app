import 'package:bmw/anasayfa.dart';
import 'package:flutter/material.dart';

import 'diger.dart';

class iletisim_Formu extends StatefulWidget {
  const iletisim_Formu({Key? key}) : super(key: key);

  @override
  State<iletisim_Formu> createState() => _iletisim_FormuState();
}

class _iletisim_FormuState extends State<iletisim_Formu> {
  final formkey = GlobalKey<FormState>();
  late String ad;
  late String soyad;
  late String telNo;
  late String eposta;
  late String plakaNo;
  String selectedCity = 'Seçiniz'; // Varsayılan şehir
  var secilen = 'Seçiniz';
  List<String> cities = ['Seçiniz','Ankara', 'İstanbul', 'İzmir', 'Bursa', 'Antalya','Konya',''];
  List<String> konu=['Seçiniz', 'Görüş', 'İstek','Öneri','Şikayet'];

  bool isChanged=false;

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
          child: Text('İletişim Formu',
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor:Colors.white60 ,

      ),
        body: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(padding: EdgeInsets.only(top: 5,left: 15,right: 15),
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
                      child:  Padding(padding: EdgeInsets.only(top: 10,left: 15,right: 15),
                        child: Column(
                          children: [
                            Text("Öneri,eleştiri,talep ya da yorum ...Aklınızdakileri bizimle paylaşın.Mesajınız yetkililerimiz tarafından özenle incelendikten sonra ilgili departmanlara ulaştırılacak ve en kısa sürede cevaplanacaktır. ",
                              style: TextStyle(fontSize: 15),),
                            Text(""),
                          ],
                        ),
                      ),
                    )
                ),
                Padding(padding: EdgeInsets.only(top: 15,left: 15,right: 15),
                  child: Container(
                    padding: EdgeInsets.only(top: 20,left: 15,right: 15),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black54,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.horizontal(),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ad*',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 8),
                        Container(
                          width: 400,
                          height: 50,
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Bilgilerinizi eksiksiz doldurunuz";
                              } else {}
                            },
                            onSaved: (value) {
                              ad = value!;
                            },
                            decoration: InputDecoration(
                              // labelText: "Ad",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.horizontal()
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Soyad*',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 8),
                        Container(
                          width: 400,
                          height: 50,
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Bilgilerinizi eksiksiz doldurunuz";
                              } else {}
                            },
                            onSaved: (value) {
                              soyad= value!;
                            },
                            decoration: InputDecoration(
                              //labelText: "Ad",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.horizontal()
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Telefon* ',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 8),
                        Container(
                          width: 400,
                          height: 50,
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Bilgilerinizi eksiksiz doldurunuz";
                              } else {}
                            },
                            onSaved: (value) {
                              telNo = value!;
                            },
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              //labelText: "Ad",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.horizontal()
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'E-Posta*',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 8),
                        Container(
                          width: 400,
                          height: 50,
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Bilgilerinizi eksiksiz doldurunuz";
                              } else {}
                            },
                            onSaved: (value) {
                              eposta= value!;
                            },
                            decoration: InputDecoration(
                              //labelText: "Ad",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.horizontal()
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Plaka No*',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 8),
                        Container(
                          width: 400,
                          height: 50,
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Bilgilerinizi eksiksiz doldurunuz";
                              } else {}
                            },
                            onSaved: (value) {
                              plakaNo= value!;
                            },
                            decoration: InputDecoration(
                              //labelText: "Ad",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.horizontal()
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'İl',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 8),
                        Container(
                          width: 400,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.horizontal(),

                          ),
                          child: DropdownButton<String>(
                            value: selectedCity,
                            items: cities.map((String city) {
                              return DropdownMenuItem<String>(
                                value: city,
                                child: Text(city),

                              );
                            }).toList(),
                            onChanged: ( newValue) {
                              setState(() {
                                selectedCity = newValue!; // Seçilen şehri güncelle
                              });
                            },

                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Konu',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 8),
                        Container(
                          width: 400,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.horizontal(),
                          ),
                          child: DropdownButton<String>(
                            value: secilen,
                            items: konu.map((String city) {
                              return DropdownMenuItem<String>(
                                value: city,
                                child: Row(
                                  children: [
                                    Text(city),
                                  ],
                                ),
                              );
                            }).toList(),
                            onChanged: ( newValue) {
                              setState(() {
                               secilen = newValue!; // Seçilen şehri güncelle
                              });
                            },

                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Mesajınız',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.only(top: 1),
                          child: Container(

                            child: TextField(
                              keyboardType: TextInputType.multiline,
                              maxLines: 7,
                              decoration: InputDecoration(
                                //  hintText: "Açıklama",
                                  filled: true,
                                 // fillColor: Colors.blue.shade100,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.vertical(),
                                  //  borderSide: BorderSide.none,

                                  )),
                            ),
                          ),
                        ),



                        Padding(padding: EdgeInsets.only(top: 10)),
                      ],
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 15,left: 15,right: 15),
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
                      child:  Padding(padding: EdgeInsets.only(top: 10,left: 15,right: 15),
                        child: Column(
                          children: [
                            Text("Kişisel verilerinizin işlenmesi hakkında aydınlatma metnini buradan inceleyebilirsiniz.",style: TextStyle(fontSize: 14),),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child:  Row(
                                children: [

                                  Padding(padding: EdgeInsets.only(top: 10),
                                    child: Checkbox(value: isChanged,

                                      onChanged: (newbool){
                                        setState(() {
                                          isChanged=newbool!;
                                        });
                                      },
                                    ),
                                  ),

                                  Padding(padding: EdgeInsets.only(top: 10),
                                    child: Text("Borusan Otomativ İthalat ve Dağıtım A.Ş.'nin tanıtım ve kampanyalarından haberdar olmak için ileti almak ister misiniz?  ",style:TextStyle(fontSize: 14) ,),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                    )
                ),
                Padding(padding: EdgeInsets.only(top: 20,left: 15,right: 15),child:SizedBox(
                  width: 600,
                  height: 40,
                  child: ElevatedButton(onPressed: (){
                    if (formkey.currentState!.validate()) {
                      formkey.currentState!.save();
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>anasayfa()));
                    }
                   // Navigator.push(context,MaterialPageRoute(builder: (context)=>anasayfa()));
                  }, child: Text("Gönder"),
                    style: ElevatedButton.styleFrom(
                        primary:  Colors.grey
                    ),),
                ),
                ),
                SizedBox(height: 20,)
              ],
            ),
          ),
        ),
    ),
    );
  }
}
