import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget deneme(){
  return Container(
    child: GridView.count(shrinkWrap: true,crossAxisCount: 2,children: [
      Card(
        margin: EdgeInsets.all(8.0),
        child: InkWell(
          onTap: (){},
          splashColor: Color(0xFF1c0f45),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.directions_car,size: 70.0,color:  Color(0xFF1c0f45),),
                Text("Tümü",style: new TextStyle(fontSize: 17.0)),
              ],
            ),
          ),
        ),

      ),
      Card(
        margin: EdgeInsets.all(8.0),
        child: InkWell(
          onTap: (){},
          splashColor: Color(0xFF1c0f45),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.directions_car,size: 70.0,color:  Color(0xFF1c0f45),),
                Text("Cabrio",style: new TextStyle(fontSize: 17.0)),
              ],
            ),
          ),
        ),

      ),
      Card(
        margin: EdgeInsets.all(8.0),
        child: InkWell(
          onTap: (){},
          splashColor: Color(0xFF1c0f45),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.directions_car,size: 70.0,color:  Color(0xFF1c0f45),),
                Text("Coupe",style: new TextStyle(fontSize: 17.0)),
              ],
            ),
          ),
        ),
      ),
      Card(
        margin: EdgeInsets.all(8.0),
        child: InkWell(
          onTap: (){},
          splashColor: Color(0xFF1c0f45),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.directions_car,size: 70.0,color:  Color(0xFF1c0f45),),
                Text("Hatchback",style: new TextStyle(fontSize: 17.0)),
              ],
            ),
          ),
        ),
      ),
      Card(
        margin: EdgeInsets.all(8.0),
        child: InkWell(
          onTap: (){},
          splashColor: Color(0xFF1c0f45),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.directions_car,size: 70.0,color:  Color(0xFF1c0f45),),
                Text("Roadster",style: new TextStyle(fontSize: 17.0)),
              ],
            ),
          ),
        ),
      ),
      Card(
        margin: EdgeInsets.all(8.0),
        child: InkWell(
          onTap: (){},
          splashColor: Color(0xFF1c0f45),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.directions_car,size: 70.0,color:  Color(0xFF1c0f45),),
                Text("Sedan",style: new TextStyle(fontSize: 17.0)),
              ],
            ),
          ),
        ),
      ),
      Card(
        margin: EdgeInsets.all(8.0),
        child: InkWell(
          onTap: (){},
          splashColor: Color(0xFF1c0f45),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.directions_car,size: 70.0,color:  Color(0xFF1c0f45),),
                Text("Station Wagon",style: new TextStyle(fontSize: 17.0)),
              ],
            ),
          ),
        ),
      ),
      Card(
        margin: EdgeInsets.all(8.0),
        child: InkWell(
          onTap: (){},
          splashColor: Color(0xFF1c0f45),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.directions_car,size: 70.0,color:  Color(0xFF1c0f45),),
                Text("SUV",style: new TextStyle(fontSize: 17.0)),
              ],
            ),
          ),
        ),
      ),



    ],),

  );
}