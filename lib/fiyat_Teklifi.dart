import 'package:flutter/material.dart';

import 'anasayfa.dart';
class fiyat_Teklifi extends StatefulWidget {
  const fiyat_Teklifi({Key? key}) : super(key: key);

  @override
  State<fiyat_Teklifi> createState() => _fiyat_TeklifiState();
}

class _fiyat_TeklifiState extends State<fiyat_Teklifi> {
  bool isChanged=false;
  final formkey = GlobalKey<FormState>();
  late String ad;
  late String soyad;
  late String telNo;
  late String eposta;
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
            Navigator.push(context, MaterialPageRoute(builder: (context)=>anasayfa()));
          },icon: Icon(Icons.chevron_left,size: 40.0,),  ),
          title: Center(
            child: Text('Fiyat Teklifi',
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
               // SizedBox(height: 10,),
                Image.asset('images/iyi.jpg',fit: BoxFit.cover,),
                Padding(padding: EdgeInsets.only(top: 10,left: 20,right: 20),
                  child: SizedBox(
                    width: 400,
                    height: 60,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Bilgilerinizi eksiksiz doldurunuz";
                        } else {}
                      },
                      onSaved: (value) {
                        ad = value!;
                      },
                     // keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          labelText: "Adınız ",
                       //   prefixIcon: Icon(Icons.phone_android),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 2),
                              borderRadius: BorderRadius.horizontal()
                          )
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10,left: 20,right: 20),
                  child: SizedBox(
                    width: 400,
                    height: 60,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Bilgilerinizi eksiksiz doldurunuz";
                        } else {}
                      },
                      onSaved: (value) {
                        soyad= value!;
                      },
                      // keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          labelText: "Soyadınız",
                          //   prefixIcon: Icon(Icons.phone_android),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 2),
                              borderRadius: BorderRadius.horizontal()
                          )
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10,left: 20,right: 20),
                  child: SizedBox(
                    width: 400,
                    height: 60,
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
                          labelText: "Telefon Numaranız",
                       //   prefixIcon: Icon(Icons.phone_android),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 2),
                              borderRadius: BorderRadius.horizontal()
                          )
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10,left: 20,right: 20),
                  child: SizedBox(
                    width: 400,
                    height: 60,
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Bilgilerinizi eksiksiz doldurunuz";
                        } else {}
                      },
                      onSaved: (value) {
                        eposta= value!;
                      },
                      // keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          labelText: "E-Posta Adresiniz",
                          //   prefixIcon: Icon(Icons.phone_android),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 2),
                              borderRadius: BorderRadius.horizontal()
                          )
                      ),
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
                Padding(padding: EdgeInsets.only(top: 15,left: 15,right: 15),child:SizedBox(
                  width: 600,
                  height: 40,
                  child: ElevatedButton(onPressed: (){
                    if (formkey.currentState!.validate()) {
                      formkey.currentState!.save();
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>anasayfa()));
                    }
                    // Navigator.push(context,MaterialPageRoute(builder: (context)=>anasayfa()));
                  }, child: Text("Hemen Ücretsiz Teklif Al"),
                    style: ElevatedButton.styleFrom(
                        primary:  Colors.grey
                    ),),
                ),
                ),
                SizedBox(height: 8,)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
