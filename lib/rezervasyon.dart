import 'package:bmw/diger.dart';
import 'package:flutter/material.dart';
class rezervasyon extends StatefulWidget {
  const rezervasyon({Key? key}) : super(key: key);

  @override
  State<rezervasyon> createState() => _rezervasyonState();
}

class _rezervasyonState extends State<rezervasyon> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
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
            child: Text('Rezervasyonlarım',
              style: TextStyle(color: Colors.black),
            ),
          ),
          backgroundColor:Colors.white60 ,

        ),

        body:Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedTabIndex = 0;
                        });
                      },
                      child: Container(
                        child: Text(
                          'Ön Rezervasyon',
                          style: TextStyle(
                            fontSize: 18,fontWeight: FontWeight.bold,
                            decoration: selectedTabIndex == 0
                                ? TextDecoration.underline
                                : TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 100),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedTabIndex = 1;
                        });
                      },
                      child: Text(
                        'Rezervasyon',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          decoration: selectedTabIndex == 1

                              ? TextDecoration.underline
                              : TextDecoration.none,
                        ),
                      ),
                    ),
                  ],
                ),
            ),
            Padding(padding: EdgeInsets.only(top: 100),
              child:  Center(child: Text("Rezervasyonunuz bulunmamaktadır.",style: TextStyle(fontSize: 17),),),)

          ],
        ),

      ),
    );
  }
}
