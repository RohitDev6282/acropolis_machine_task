import 'dart:convert';
import 'package:acropolis_app/model/entertainmentModel.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class Entertainment extends StatefulWidget {
  late final Album entertainments;

  @override
  State<Entertainment> createState() => _EntertainmentState();
}

class _EntertainmentState extends State<Entertainment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Entertainment"),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                  itemCount: entertainments.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 0.75),
                  itemBuilder: (context, index) => Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 180,
                                width: 160,
                                child: Image.asset(entertainments[0].image),
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              Positioned(
                                  left: 102,
                                  bottom: 130,
                                  child: Stack(
                                    children: [
                                      Icon(Icons.favorite,size:50,color:Colors.white),
                                      IconButton(
                                          onPressed: () {
                                            
                                          },
                                          hoverColor: Colors.red,
                                          icon: Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                            size: 30,
                                          )),
                                    ],
                                  ))
                            ],
                          ),
                          Text(
                            "\$232",
                            style: TextStyle(color: Colors.red, fontSize: 16),
                          ),
                          Text(
                            entertainments[0].title,
                            style: TextStyle(color: Colors.red, fontSize: 15),
                          ),
                        ],
                      )

                  // entertainment : entertainments[index],
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
