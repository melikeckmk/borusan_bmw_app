
import 'package:bmw/anasayfa.dart';
import 'package:bmw/deneme.dart';
import 'package:bmw/uyeOl.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'ilk.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  FirebaseAuth auth  = FirebaseAuth.instance;
  late String email;
  late String sifre;
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      //extendBodyBehindAppBar: false,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Form(
        key: formkey,
            child: Column(
              children: [
                //Padding(padding: EdgeInsets.only(top: 10)),
                Center(
                  child: Image.asset(
                    'images/p.jpeg',
                    width: 150, // Görüntünün genişliği
                    height: 120, // Görüntünün yüksekliği
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10),
                  child: Text("Hoş Geldiniz",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20,top: 20),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Bilgilerinizi eksiksiz doldurunuz!";
                      } else {}
                    },
                    onSaved: (value) {
                      email = value!;
                    },
                    decoration: InputDecoration(
                        hintText: "E-Mail Giriniz",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.vertical(),
                        //  borderSide: BorderSide.none,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, right: 20, left: 20),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Bilgilerinizi eksiksiz doldurunuz!";
                      } else {}
                    },
                    onSaved: (value) {
                      sifre = value!;
                    },
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                        hintText: "Şifre",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.vertical(),
                         // borderSide: BorderSide.none,
                        )),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20,left: 20,right: 20),child:SizedBox(
                  width: 600,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: ()   async {
    if (formkey.currentState!.validate()) {
    formkey.currentState!.save();
    try{
      await auth.signInWithEmailAndPassword(email:email , password: sifre);
      Navigator.push(context, MaterialPageRoute(builder: (context)=>anasayfa()));
    }catch(e){
      print("KULLANICI YOK");

    }
    }




                  },
                    child: Text("Giriş Yap"),
                    style: ElevatedButton.styleFrom(
                        primary:  Color(0xFF42A5F5)
                    ),),
                ),
                ),
                Padding(padding: EdgeInsets.only(top: 30,left: 20,right: 20),child:SizedBox(
                  width: 600,
                  height: 40,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, (MaterialPageRoute(builder: (context)=>uyeOl())));

                  },
                    child: Text("Üye Ol",style: TextStyle(
                      color: Colors.black,
                    ),),
                    style: ElevatedButton.styleFrom(
                      // primary:  Color(0xFFFFFFFF)
                        primary: Colors.white
                    ),

                  ),
                ),
                ),
                Padding(padding: EdgeInsets.only(top: 30,right: 20,left: 20),
                  child: TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>anasayfa()));
                  },
                    child: Text("Giriş Yapmadan Devam Et >",style: TextStyle(fontSize: 15,color: Colors.black),),

                  ),
                ),




              ],
            ),
          ),
        )
      // This trailing comma makes auto-formatting nicer for build methods.
    );

  }


}