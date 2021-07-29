import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';


class FeedBackPage extends StatefulWidget {

  
   
  @override
  _FeedBackPageState createState() => _FeedBackPageState();
}

class _FeedBackPageState extends State<FeedBackPage> {

  String  result = "";

 TextEditingController textmessage = new TextEditingController();
  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xFFF6F6F6),
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title:Text("FeedBack"),

       
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            }), 
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             
            children: <Widget>[
              SizedBox(height:25.0),
          Text("Please select the type of the FeedBack",
          style:TextStyle(color:Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold)),
          SizedBox(height:25.0),
          buildCheckItem("login trouble"),
          buildCheckItem("Validiation trouble in login"),
            buildCheckItem("There should be 3 categorie Entertainment, Books app"),

              buildCheckItem("All the categories should have data(Min-2 data)"),
              

                buildCheckItem("There should be option to Like the section."),
                  buildCheckItem("Feedback Option."),
                    buildCheckItem("LogOut"),
                    SizedBox(height:25.0),
                    buildFeedBackForm(),



          
            
              
               Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          height: 70,
          color: Colors.white,
          child: Row(
            children: <Widget>[
           
              Expanded(
                child: TextField(
                  controller: textmessage,
                  decoration: InputDecoration(
                    hintText: 'Add the FeedBack',
                   
                  ),
                
               
                  textCapitalization: TextCapitalization.sentences,
                ),
              ),
              IconButton(
                icon: Icon(Icons.send),
                iconSize: 25,
                color: Theme.of(context).primaryColor,
               
                onPressed:(){

                },
            tooltip: 'Give the FeedBack',
    
             
              ),
            ],
          ),
    ),
           
             
              
            ],
          ),
        ),
      ),
    
      
    );
    
  }
 buildFeedBackForm(){
   return Container(height:200,
   child:Stack(children: [TextField(
     maxLines: 10,
     decoration: InputDecoration(hintText: "Please briefly decscribe the issue",
    hintStyle:TextStyle(color:Colors.black,
     fontSize: 14,
     ),
     border: OutlineInputBorder(borderSide: BorderSide(color:Colors.black))
     ),
   ),
   Align(alignment:Alignment.bottomCenter,child:Container(decoration: BoxDecoration(
     border:Border(top: BorderSide(width:1.0,
     color:Colors.blueAccent))
   ),))
   ],));

 }
  buildCheckItem(title){
    return  Padding(padding: EdgeInsets.only(bottom:15.0),
    child:Row(children:<Widget> [
      Icon(Icons.check_circle,
      color:Colors.blue),
      SizedBox(width:10.0),
      Text(title,
      style:TextStyle(fontWeight: FontWeight.w500,
      color:Colors.blue))

    ],));
  }
}

