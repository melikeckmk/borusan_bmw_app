import 'package:bmw/anasayfa.dart';
import 'package:flutter/material.dart';

import 'diger.dart';
class test_Surusu extends StatefulWidget {
  const test_Surusu({Key? key}) : super(key: key);

  @override
  State<test_Surusu> createState() => _test_SurusuState();
}

class _test_SurusuState extends State<test_Surusu> {
  final formkey = GlobalKey<FormState>();
  late String ad;
  late String soyad;
  late String telNo;
  late String eposta;

  String selectedCity = 'Seçiniz';
  bool isChanged=false;// Varsayılan şehir
  var secilen = 'Seçiniz';
  List<String> cities = ['Seçiniz',
    'Borusan Oto Adana -Mersin',
    'Borusan Oto Ankara',
    'Borusan Oto Avcılar',
    'Borusan Oto Bodrum',
    'Borusan Oto Çorlu',
    'Borusan Oto Diyarbakır',
    'Borusan Oto Gaziantep',
    'Borusan Oto İstinye',
    'Borusan Oto Samandıra',
    'İnciroğlu Oto',
    'Köprülü Oto',
    'Kosifler Oto Antalya',
    'Kosifler Oto Bağdat Caddesi',
    'Kosifler Oto Bostancı',
    'Kosifler Oto Samsun',
    'Kosifler Oto Trabzon',
    'Özgörkey',
    'Özgerkey Denizli',
    'Öztorun Oto',
    'Öztorun Oto Sakarya'
    'Teknik Oto Bursa 1',
    'Teknik Oto Bursa 2 Nilüfer',
    'Teknik Oto Eskişehir',
  ];
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
      child: Text('Test Sürüşü',
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
          Image.asset('images/yeni2.jpg',fit: BoxFit.cover,),
          Padding(padding: EdgeInsets.only(top: 10,left: 10),
            child: Text("Her BMW otomobilinde olduğu gibi, BMW 1 Serisi'nin taviz vermeyen performansını ve benzersiz sürüş keyfini ancak bir test sürüşü ile deneyimleyebilirsiniz. .",
              style: TextStyle(fontSize: 15),),
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
                    'Tercih ettiğiniz Yetkili Satıcı',
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
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top:15),
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 15)),
                  SizedBox(
                    width: 180,
                    height: 40,
                    child:  ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      child:  Text('Geri',),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black12, // İstenilen rengi burada ayarlayabilirsiniz
                        textStyle: TextStyle(color: Colors.white),
                      ),

                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10,left: 10)),
                  SizedBox(
                    width: 180,
                    height: 40,
                    child:  ElevatedButton(
                      onPressed: (){
                       // Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
                        if (formkey.currentState!.validate()) {
                          formkey.currentState!.save();
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>anasayfa()));
                        }
                      },
                      child:  Text('Gönder'),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF1c0f45), // İstenilen rengi burada ayarlayabilirsiniz
                        textStyle: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),

          SizedBox(height: 15),
        ]
        ),
      ),
    ),
    ),
    );
  }
}
