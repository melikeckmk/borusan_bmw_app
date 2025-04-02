import 'package:bmw/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class uyeOl extends StatefulWidget {
  const uyeOl({Key? key}) : super(key: key);

  @override
  State<uyeOl> createState() => _uyeOlState();
}

class _uyeOlState extends State<uyeOl> {
  FirebaseAuth auth  = FirebaseAuth.instance;
  final formkey = GlobalKey<FormState>();
  late String ad;
  late String soyad;
  late String telNo;
  late String eposta;

  bool isChanged=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60,right: 350),
                child: IconButton(
                  icon: Icon(Icons.chevron_left,size: 40.0,),
                  onPressed: () {
                    // İşlemler burada gerçekleştirilir
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
                  },
                ),
              ),
              //Padding(padding: EdgeInsets.only(top: 10)),
              Center(
                child: Image.asset(
                  'images/p.jpeg',
                  width: 130, // Görüntünün genişliği
                  height: 100, // Görüntünün yüksekliği
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10),
                child: Text("Hoş Geldiniz",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10,right: 20,left: 20),
                child: Text("BMW Türkiye mobil uygulama üyeliğinizi başlatmak için aşağıdaki formu doldurabilirsiniz.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),
                ),
              ),

              Padding(padding: EdgeInsets.only(top: 5,left: 100),
                child: Center(
                  child: Row(
                    children: [
                      Text("Hesabınız var mı?",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15),
                        ),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
                      }, child: Text("Giriş Yap")),
                    ],
                  ),
                ),
              ),
      Padding(padding: EdgeInsets.only(top: 5,left: 15,right: 15),
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
              TextFormField(
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
              SizedBox(height: 15),
                Text(
                  'Soyad*',
                  style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 8),
              TextFormField(
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
              SizedBox(height: 15),
              Text(
                'E-Posta*',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 8),
              TextFormField(
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
              SizedBox(height: 15),
              Text(
                'Şifre* ',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 8),
              TextFormField(
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

              SizedBox(height: 15),
              Text(
                '[*] işareti olanlar zorunludur.',
                style: TextStyle(fontSize: 14),
              ),
              Text(
                '',
                style: TextStyle(fontSize: 14),
              ),
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
              SizedBox(height: 10),
              Padding(padding: EdgeInsets.only(top: 10,left: 20,right: 20),child:SizedBox(
                width: 600,
                height: 40,
                child: ElevatedButton(
                  onPressed: () async {
                    if (formkey.currentState!.validate()) {
                      formkey.currentState!.save();
                      var kullanici = await auth.createUserWithEmailAndPassword(email: eposta, password: telNo);
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>MyApp()));
                    }
                  },
                  child: Text("Üye Ol"),
                  style: ElevatedButton.styleFrom(
                      primary:  Color(0xFF42A5F5)
                  ),),
              ),
              ),
              SizedBox(height: 20,)

            ],
          ),
        ),

      ),



    );
  }
}
