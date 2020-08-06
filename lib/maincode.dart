import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
String x;
web(cmd) async
{
 var url="http://192.168.43.16/cgi-bin/${cmd}.py";
 var r = await http.get(url);
 print(r.body); 
}

mycode()
{
  var mybody = Container(

    height: double.infinity,
    width: double.infinity,
    color: Colors.red[300],
    
    child: Center(
      child: Container(
        height: 300,
        width: 300,
        color: Colors.amber,

        child: Column(children: <Widget>[
             Card(
               child: TextField(
                 onChanged: (val)
                 {
                   x = val;
                 },
               ),
             ),
             Card(
               child: FlatButton(
                 onPressed: (){
                   web(x);
                 }
                 ,
                 child: Text("Run Command"),
               ),
             )


        ],),
        
      ),
    ),
    



  );


  return MaterialApp(
     
     home:Scaffold(appBar: AppBar(title: Text("Server Application"),),
     body: mybody,)




  );
}