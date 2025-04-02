import 'package:bmw/servis_islemleri.dart';
import 'package:flutter/material.dart';
class randevu_Al extends StatefulWidget {
  const randevu_Al({Key? key}) : super(key: key);

  @override
  State<randevu_Al> createState() => _randevu_AlState();
}

class _randevu_AlState extends State<randevu_Al> {
  final formkey = GlobalKey<FormState>();
  late String yil;
  late String seri;
  late String model;
  late String plaka;
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
          child: Text('Randevu Al',
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
              Image.asset('images/randevu.jpg',fit: BoxFit.cover,),


                      Padding(padding: EdgeInsets.only(top: 5,left: 5,right: 5),
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 10,left: 20,right: 20),
                            child: SizedBox(
                              width: 400,
                              height: 70,
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Bilgilerinizi eksiksiz doldurunuz";
                                  } else {}
                                },
                                onSaved: (value) {
                                  yil = value!;
                                },
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                    labelText: "Model Yılı",
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
                              height: 70,
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Bilgilerinizi eksiksiz doldurunuz";
                                  } else {}
                                },
                                onSaved: (value) {
                                  seri = value!;
                                },
                                // keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                    labelText: "Seri",
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
                              height: 70,
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Bilgilerinizi eksiksiz doldurunuz";
                                  } else {}
                                },
                                onSaved: (value) {
                                  model = value!;
                                },
                                // keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                    labelText: "Model",
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
                              height: 70,
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Bilgilerinizi eksiksiz doldurunuz";
                                  } else {}
                                },
                                onSaved: (value) {
                                  plaka = value!;
                                },
                                // keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                    labelText: "Plaka",
                                    //   prefixIcon: Icon(Icons.phone_android),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(width: 2),
                                        borderRadius: BorderRadius.horizontal()
                                    )
                                ),
                              ),
                            ),
                          ),

            ],
          ),
      ),
              Padding(padding: EdgeInsets.only(top: 15,left: 15,right: 15),child:SizedBox(
                width: 600,
                height: 50,
                child: ElevatedButton(
                  onPressed: (){
                    if (formkey.currentState!.validate()) {
                      formkey.currentState!.save();
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>servis_islemleri()));
                    }
                  }, child: Text("Randevuya Geç"),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey
                  ),),
              ),
              ),
              SizedBox(height: 10),

   ] ),
        ),
    ),
    ),
    );

  }
}
