import 'package:flutter/material.dart';
class fiyatListesi extends StatefulWidget {
  const fiyatListesi({Key? key}) : super(key: key);

  @override
  State<fiyatListesi> createState() => _fiyatListesiState();
}

class _fiyatListesiState extends State<fiyatListesi> {
  int selectedTabIndex = 0;
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
    title: Center(
    child: Text('Fiyat Listesi',
    style: TextStyle(color: Colors.black),
    ),
    ),
    backgroundColor:Colors.white60 ,
    ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text("1 SERİSİ",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),),
              ),
              Card(
                elevation: 4,
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){},
                  splashColor: Color(0xFF1c0f45),
                  child: SizedBox(
                    //  width: 10, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                    //  height: 100,
                    child:
                    Image.asset('images/resim.png',fit: BoxFit.cover,
                      //width: 300, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                      // height: 180,
                    ),
                    //  Coupe

                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top:10),
                child: Container(
                  width: 400,
                  height: 70,
                  color: Color(0xCCD5D5DA),
                  // margin: EdgeInsets.fromLTRB(25,60,10,300),
                  padding: EdgeInsets.all(15),
                  child:  SingleChildScrollView(
                    child: Column(
                      children: [
                          Row(
                            children: [

                              Text(
                                // textAlign: TextAlign.center,
                                " Model",
                                style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 140),
                                child: Column(
                                  children: [
                                    Text(
                                      // textAlign: TextAlign.center,
                                      " Azami Anahtar ",
                                      style: TextStyle(
                                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                                    ),
                                    Text(
                                      // textAlign: TextAlign.center,
                                      " Teslim Satış Fiyatı ",
                                      style: TextStyle(
                                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),

                  ),
                ),
              ),
          Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              children: [
                Text(
                  // textAlign: TextAlign.center,
                  "BMW 118i ",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Padding(padding: const EdgeInsets.only(left: 150),
                child: Column(
                children: [
                Text(
                // textAlign: TextAlign.center,
                  "1.882.800 TL ",
                style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                 ),
               ])),

              ],
            ),
          ),
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Text(
                      // textAlign: TextAlign.center,
                      "BMW 116d",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 150),
                        child: Column(
                            children: [
                              Text(
                                // textAlign: TextAlign.center,
                                "2.050.500 TL ",
                                style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ])),

                  ],
                ),
              ),


              SizedBox(
                height: 20,
              ),
              Center(
                child: Text("2 SERİSİ",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),),
              ),
              Card(
                elevation: 4,
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){
                  },
                  splashColor: Color(0xFF1c0f45),
                  child: SizedBox(
                    //  width: 10, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                    //  height: 100,
                    child:
                    Image.asset('images/resim2.png',fit: BoxFit.cover,
                      //width: 300, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                      // height: 180,
                    ),
                    //  Coupe

                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top:10),
                child: Container(
                  width: 400,
                  height: 70,
                  color: Color(0xCCD5D5DA),
                  // margin: EdgeInsets.fromLTRB(25,60,10,300),
                  padding: EdgeInsets.all(15),
                  child:  SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [

                            Text(
                              // textAlign: TextAlign.center,
                              " Model",
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 150),
                              child: Column(
                                children: [
                                  Text(
                                    // textAlign: TextAlign.center,
                                    " Azami Anahtar ",
                                    style: TextStyle(
                                        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                                  ),
                                  Text(
                                    // textAlign: TextAlign.center,
                                    " Teslim Satış Fiyatı ",
                                    style: TextStyle(
                                        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Text(
                      // textAlign: TextAlign.center,
                      "BMW 218i \nGran Coupe",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 150),
                        child: Column(
                            children: [
                              Text(
                                // textAlign: TextAlign.center,
                                "2.023.000 TL ",
                                style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ])),

                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Text(
                      // textAlign: TextAlign.center,
                      "BMW 220i \nActive\nTourer         ",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 150),
                        child: Column(
                            children: [
                              Text(
                                // textAlign: TextAlign.center,
                                "2.225.400 TL",
                                style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ])),

                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text("3 SERİSİ",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),),
              ),
              Card(
                elevation: 4,
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){
                  },
                  splashColor: Color(0xFF1c0f45),
                  child: SizedBox(
                    //  width: 10, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                    //  height: 100,
                    child:
                    Image.asset('images/resim3.png',fit: BoxFit.cover,
                      //width: 300, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                      // height: 180,
                    ),
                    //  Coupe

                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top:10),
                child: Container(
                  width: 400,
                  height: 70,
                  color: Color(0xCCD5D5DA),
                  // margin: EdgeInsets.fromLTRB(25,60,10,300),
                  padding: EdgeInsets.all(15),
                  child:  SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [

                            Text(
                              // textAlign: TextAlign.center,
                              " Model",
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 150),
                              child: Column(
                                children: [
                                  Text(
                                    // textAlign: TextAlign.center,
                                    " Azami Anahtar ",
                                    style: TextStyle(
                                        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                                  ),
                                  Text(
                                    // textAlign: TextAlign.center,
                                    " Teslim Satış Fiyatı ",
                                    style: TextStyle(
                                        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Text(
                      // textAlign: TextAlign.center,
                      "BMW 320i\nSedan",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 150),
                        child: Column(
                            children: [
                              Text(
                                // textAlign: TextAlign.center,
                                "2.023.000 TL ",
                                style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ])),

                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Text(
                      // textAlign: TextAlign.center,
                      "BMW 330i\nxDrive\nTouring",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 150),
                        child: Column(
                            children: [
                              Text(
                                // textAlign: TextAlign.center,
                                "2.225.400 TL ",
                                style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ])),

                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text("4 SERİSİ",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),),
              ),
              Card(
                elevation: 4,
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){
                  },
                  splashColor: Color(0xFF1c0f45),
                  child: SizedBox(
                    //  width: 10, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                    //  height: 100,
                    child:
                    Image.asset('images/resim4.png',fit: BoxFit.cover,
                      //width: 300, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                      // height: 180,
                    ),
                    //  Coupe

                  ),
                ),

              ),
              Padding(padding: EdgeInsets.only(top:10),
                child: Container(
                  width: 400,
                  height: 70,
                  color: Color(0xCCD5D5DA),
                  // margin: EdgeInsets.fromLTRB(25,60,10,300),
                  padding: EdgeInsets.all(15),
                  child:  SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [

                            Text(
                              // textAlign: TextAlign.center,
                              " Model",
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 150),
                              child: Column(
                                children: [
                                  Text(
                                    // textAlign: TextAlign.center,
                                    " Azami Anahtar ",
                                    style: TextStyle(
                                        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                                  ),
                                  Text(
                                    // textAlign: TextAlign.center,
                                    " Teslim Satış Fiyatı ",
                                    style: TextStyle(
                                        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Text(
                       //textAlign: TextAlign.center,
                      "BMW 420i\nCoupe",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 150),
                        child: Column(
                            children: [
                              Text(
                                // textAlign: TextAlign.center,
                                "3.324.100 TL ",
                                style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ])),

                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Text(
                      // textAlign: TextAlign.center,
                      "BMW i4\nM50          ",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 150),
                        child: Column(
                            children: [
                              Text(
                                // textAlign: TextAlign.center,
                                "5.196.700 TL ",
                                style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ])),

                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text("İ4 SERİSİ",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),),
              ),
              Card(
                elevation: 4,
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){
                  },
                  splashColor: Color(0xFF1c0f45),
                  child: SizedBox(
                    //  width: 10, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                    //  height: 100,
                    child:
                    Image.asset('images/resim5.png',fit: BoxFit.cover,
                      //width: 300, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                      // height: 180,
                    ),
                    //  Coupe

                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top:10),
                child: Container(
                  width: 400,
                  height: 70,
                  color: Color(0xCCD5D5DA),
                  // margin: EdgeInsets.fromLTRB(25,60,10,300),
                  padding: EdgeInsets.all(15),
                  child:  SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [

                            Text(
                              // textAlign: TextAlign.center,
                              " Model",
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 150),
                              child: Column(
                                children: [
                                  Text(
                                    // textAlign: TextAlign.center,
                                    " Azami Anahtar ",
                                    style: TextStyle(
                                        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                                  ),
                                  Text(
                                    // textAlign: TextAlign.center,
                                    " Teslim Satış Fiyatı ",
                                    style: TextStyle(
                                        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Text(
                      //textAlign: TextAlign.center,
                      "BMW i4\neDrive30",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 150),
                        child: Column(
                            children: [
                              Text(
                                // textAlign: TextAlign.center,
                                "3.540.600 TL ",
                                style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ])),

                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Text(
                      // textAlign: TextAlign.center,
                      "BMW i4\nM50        ",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 150),
                        child: Column(
                            children: [
                              Text(
                                // textAlign: TextAlign.center,
                                "5.196.700 TL ",
                                style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ])),

                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),
              Center(
                child: Text("6 SERİSİ",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),),
              ),
              Card(
                elevation: 4,
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){
                  },
                  splashColor: Color(0xFF1c0f45),
                  child: SizedBox(
                    //  width: 10, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                    //  height: 100,
                    child:
                    Image.asset('images/resim6.png',fit: BoxFit.cover,
                      //width: 300, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                      // height: 180,
                    ),
                    //  Coupe

                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top:10),
                child: Container(
                  width: 400,
                  height: 70,
                  color: Color(0xCCD5D5DA),
                  // margin: EdgeInsets.fromLTRB(25,60,10,300),
                  padding: EdgeInsets.all(15),
                  child:  SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [

                            Text(
                              // textAlign: TextAlign.center,
                              " Model",
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 150),
                              child: Column(
                                children: [
                                  Text(
                                    // textAlign: TextAlign.center,
                                    " Azami Anahtar ",
                                    style: TextStyle(
                                        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                                  ),
                                  Text(
                                    // textAlign: TextAlign.center,
                                    " Teslim Satış Fiyatı ",
                                    style: TextStyle(
                                        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Text(
                      //textAlign: TextAlign.center,
                      "BMW 630i\nTurismo\nLuxury" ,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 150),
                        child: Column(
                            children: [
                              Text(
                                // textAlign: TextAlign.center,
                                "6.212.500 TL ",
                                style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ])),

                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Text(
                      // textAlign: TextAlign.center,
                      "BMW 630i \nTurismo\nM Sport",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 150),
                        child: Column(
                            children: [
                              Text(
                                // textAlign: TextAlign.center,
                                "6.348.300 TL ",
                                style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ])),

                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text("Z SERİSİ",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),),
              ),
              Card(
                elevation: 4,
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){
                  },
                  splashColor: Color(0xFF1c0f45),
                  child: SizedBox(
                    //  width: 10, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                    //  height: 100,
                    child:
                    Image.asset('images/resim7.png',fit: BoxFit.cover,
                      //width: 300, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                      // height: 180,
                    ),
                    //  Coupe

                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top:10),
                child: Container(
                  width: 400,
                  height: 70,
                  color: Color(0xCCD5D5DA),
                  // margin: EdgeInsets.fromLTRB(25,60,10,300),
                  padding: EdgeInsets.all(15),
                  child:  SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [

                            Text(
                              // textAlign: TextAlign.center,
                              " Model",
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 150),
                              child: Column(
                                children: [
                                  Text(
                                    // textAlign: TextAlign.center,
                                    " Azami Anahtar ",
                                    style: TextStyle(
                                        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                                  ),
                                  Text(
                                    // textAlign: TextAlign.center,
                                    " Teslim Satış Fiyatı ",
                                    style: TextStyle(
                                        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Text(
                      //textAlign: TextAlign.center,
                      "BMW Z4\nsDrive30i",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 150),
                        child: Column(
                            children: [
                              Text(
                                // textAlign: TextAlign.center,
                                "    4.532.700 TL ",
                                style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ])),

                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text("X1 SERİSİ",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),),
              ),
              Card(
                elevation: 4,
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){
                  },
                  splashColor: Color(0xFF1c0f45),
                  child: SizedBox(
                    //  width: 10, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                    //  height: 100,
                    child:
                    Image.asset('images/resim8.png',fit: BoxFit.cover,
                      //width: 300, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                      // height: 180,
                    ),
                    //  Coupe

                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top:10),
                child: Container(
                  width: 400,
                  height: 70,
                  color: Color(0xCCD5D5DA),
                  // margin: EdgeInsets.fromLTRB(25,60,10,300),
                  padding: EdgeInsets.all(15),
                  child:  SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [

                            Text(
                              // textAlign: TextAlign.center,
                              " Model",
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 150),
                              child: Column(
                                children: [
                                  Text(
                                    // textAlign: TextAlign.center,
                                    " Azami Anahtar ",
                                    style: TextStyle(
                                        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                                  ),
                                  Text(
                                    // textAlign: TextAlign.center,
                                    " Teslim Satış Fiyatı ",
                                    style: TextStyle(
                                        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Text(
                      //textAlign: TextAlign.center,
                      "Yeni BMW \nX1 sDrive\n18i",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 150),
                        child: Column(
                            children: [
                              Text(
                                // textAlign: TextAlign.center,
                                "2.903.800 TL ",
                                style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ])),

                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Text(
                      //textAlign: TextAlign.center,
                      "Yeni BMW \niX1 sDrive\n30",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 150),
                        child: Column(
                            children: [
                              Text(
                                // textAlign: TextAlign.center,
                                "3.067.000 TL ",
                                style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ])),

                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text("İX1 SERİSİ",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),),
              ),
              Card(
                elevation: 4,
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){
                  },
                  splashColor: Color(0xFF1c0f45),
                  child: SizedBox(
                    //  width: 10, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                    //  height: 100,
                    child:
                    Image.asset('images/resim9.png',fit: BoxFit.cover,
                      //width: 300, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                      // height: 180,
                    ),
                    //  Coupe

                  ),
                ),

              ),
              Padding(padding: EdgeInsets.only(top:10),
                child: Container(
                  width: 400,
                  height: 70,
                  color: Color(0xCCD5D5DA),
                  // margin: EdgeInsets.fromLTRB(25,60,10,300),
                  padding: EdgeInsets.all(15),
                  child:  SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [

                            Text(
                              // textAlign: TextAlign.center,
                              " Model",
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 150),
                              child: Column(
                                children: [
                                  Text(
                                    // textAlign: TextAlign.center,
                                    " Azami Anahtar ",
                                    style: TextStyle(
                                        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                                  ),
                                  Text(
                                    // textAlign: TextAlign.center,
                                    " Teslim Satış Fiyatı ",
                                    style: TextStyle(
                                        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Text(
                      //textAlign: TextAlign.center,
                      "Yeni BMW \niX1 xDrive\n30 X-Line",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 150),
                        child: Column(
                            children: [
                              Text(
                                // textAlign: TextAlign.center,
                                "3.018.400 TL ",
                                style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ])),

                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Text(
                      //textAlign: TextAlign.center,
                      "Yeni BMW \niX1 xDrive\n30 M Sport",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 150),
                        child: Column(
                            children: [
                              Text(
                                // textAlign: TextAlign.center,
                                "3.067.000 TL ",
                                style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ])),

                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text("X3 SERİSİ",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),),
              ),
              Card(
                elevation: 4,
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){
                  },
                  splashColor: Color(0xFF1c0f45),
                  child: SizedBox(
                    //  width: 10, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                    //  height: 100,
                    child:
                    Image.asset('images/resim10.png',fit: BoxFit.cover,
                      //width: 300, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                      // height: 180,
                    ),
                    //  Coupe

                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top:10),
                child: Container(
                  width: 400,
                  height: 70,
                  color: Color(0xCCD5D5DA),
                  // margin: EdgeInsets.fromLTRB(25,60,10,300),
                  padding: EdgeInsets.all(15),
                  child:  SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [

                            Text(
                              // textAlign: TextAlign.center,
                              " Model",
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 150),
                              child: Column(
                                children: [
                                  Text(
                                    // textAlign: TextAlign.center,
                                    " Azami Anahtar ",
                                    style: TextStyle(
                                        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                                  ),
                                  Text(
                                    // textAlign: TextAlign.center,
                                    " Teslim Satış Fiyatı ",
                                    style: TextStyle(
                                        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Text(
                      //textAlign: TextAlign.center,
                      "BMW \nX3 sDrive20i",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 140),
                        child: Column(
                            children: [
                              Text(
                                // textAlign: TextAlign.center,
                                "3.746.900 TL ",
                                style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ])),

                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Text(
                      //textAlign: TextAlign.center,
                      "BMW \niX3 eDrive\n30",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 150),
                        child: Column(
                            children: [
                              Text(
                                // textAlign: TextAlign.center,
                                "  5.275.400 TL ",
                                style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ])),

                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text("İX SERİSİ",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),),
              ),
              Card(
                elevation: 4,
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){
                  },
                  splashColor: Color(0xFF1c0f45),
                  child: SizedBox(
                    //  width: 10, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                    //  height: 100,
                    child:
                    Image.asset('images/resim11.png',fit: BoxFit.cover,
                      //width: 300, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                      // height: 180,
                    ),
                    //  Coupe

                  ),
                ),

              ),
              Padding(padding: EdgeInsets.only(top:10),
                child: Container(
                  width: 400,
                  height: 70,
                  color: Color(0xCCD5D5DA),
                  // margin: EdgeInsets.fromLTRB(25,60,10,300),
                  padding: EdgeInsets.all(15),
                  child:  SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [

                            Text(
                              // textAlign: TextAlign.center,
                              " Model",
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 150),
                              child: Column(
                                children: [
                                  Text(
                                    // textAlign: TextAlign.center,
                                    " Azami Anahtar ",
                                    style: TextStyle(
                                        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                                  ),
                                  Text(
                                    // textAlign: TextAlign.center,
                                    " Teslim Satış Fiyatı ",
                                    style: TextStyle(
                                        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Text(
                      //textAlign: TextAlign.center,
                      "BMW \niX xDrive40",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 140),
                        child: Column(
                            children: [
                              Text(
                                // textAlign: TextAlign.center,
                                "5.357.200 TL ",
                                style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ])),

                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Text(
                      //textAlign: TextAlign.center,
                      "BMW \niX xDrive50",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 140),
                        child: Column(
                            children: [
                              Text(
                                // textAlign: TextAlign.center,
                                "6.097.100 TL ",
                                style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ])),

                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text("M SERİSİ",style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),),
              ),
              Card(
                elevation: 4,
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){
                  },
                  splashColor: Color(0xFF1c0f45),
                  child: SizedBox(
                    //  width: 10, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                    //  height: 100,
                    child:
                    Image.asset('images/resim12.png',fit: BoxFit.cover,
                      //width: 300, // İsteğe bağlı, fotoğrafın genişliğini belirleyebilirsiniz.
                      // height: 180,
                    ),
                    //  Coupe

                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top:10),
                child: Container(
                  width: 400,
                  height: 70,
                  color: Color(0xCCD5D5DA),
                  // margin: EdgeInsets.fromLTRB(25,60,10,300),
                  padding: EdgeInsets.all(15),
                  child:  SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [

                            Text(
                              // textAlign: TextAlign.center,
                              " Model",
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 150),
                              child: Column(
                                children: [
                                  Text(
                                    // textAlign: TextAlign.center,
                                    " Azami Anahtar ",
                                    style: TextStyle(
                                        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                                  ),
                                  Text(
                                    // textAlign: TextAlign.center,
                                    " Teslim Satış Fiyatı ",
                                    style: TextStyle(
                                        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Text(
                      //textAlign: TextAlign.center,
                      "BMW \nM235i xDrive",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 140),
                        child: Column(
                            children: [
                              Text(
                                // textAlign: TextAlign.center,
                                "3.944.200 TL ",
                                style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ])),

                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Text(
                      //textAlign: TextAlign.center,
                      "BMW \nM8 Gran\nCoupe xDrive",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 140),
                        child: Column(
                            children: [
                              Text(
                                // textAlign: TextAlign.center,
                                "6.097.100 TL ",
                                style: TextStyle(
                                    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ])),

                  ],
                ),
              ),


            ],
          ),
        ),
    ),
    );
  }
}
