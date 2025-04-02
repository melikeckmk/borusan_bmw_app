import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'diger.dart';
class bmw_Haritasi extends StatefulWidget {
  const bmw_Haritasi({Key? key}) : super(key: key);

  @override
  State<bmw_Haritasi> createState() => _bmw_HaritasiState();
}

class _bmw_HaritasiState extends State<bmw_Haritasi> {
  Completer<GoogleMapController> haritakontrol = Completer();
  var ilkkonum =
  CameraPosition(target: LatLng(38.7412482, 26.1844276), zoom: 4);
  List<Marker> isaret = <Marker>[];
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
            child: Text('BMW Şarj Haritası',
              style: TextStyle(color: Colors.black),
            ),
          ),
          backgroundColor:Colors.white60 ,

        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 20)),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: Colors.blue.shade100,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height, // bu kod satırı uygulam hangi telefonda çalışırsa çalışsın o telefonun ekran boyutunu alır
                    //dur arıyorum
                    child: GoogleMap(

                      initialCameraPosition: CameraPosition(
                          target: LatLng(40.4048342, 29.0828417),
                          zoom: 9.0), //şu zoomu arttırırsan daha yakından açar gülümtamam aşkım wp bir baka
                      markers: _createMarkers(),
                      mapType: MapType.normal, // harita türü satelite uydudur
                      onMapCreated: (GoogleMapController controller) {
                        haritakontrol.complete(controller);
                      },
                      /*
                    onTap: (argument) {
                      setState(() {
                        isaret = [];
                        isaret.add(Marker(
                            markerId: MarkerId(argument.toString()),
                            position: argument));
                      });
                    },
                    */
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Set<Marker> _createMarkers() {
    return {
      Marker(
        markerId: MarkerId('marker_1'),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
        position: LatLng(40.2148554,28.8914066),
        // infoWindow: InfoWindow(title: ''),
      ),
      Marker(
        markerId: MarkerId('marker_2'),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
        position: LatLng(37.7756, -122.4180),
        //  infoWindow: InfoWindow(title: ''),
      ),
    };
  }
}
