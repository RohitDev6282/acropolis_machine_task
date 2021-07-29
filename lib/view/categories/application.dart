
import 'package:acropolis_app/view/favouriteItem.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Application extends StatelessWidget{


  Future<List<dynamic>> fetchUsers() async {
  final response = await http
      .get(Uri.parse('https://randomuser.me/api/?results=10'));
    return json.decode(response.body)['results'];

  }

  String _name(dynamic user){
    return user['name']['title'] + " " + user['name']['first'] + " " +  user['name']['last'];

  }

  String _location(dynamic user){
    return user['location']['country'];
  }

  String _age(Map<dynamic, dynamic> user){
    return "Age: " + user['dob']['age'].toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Application'),
      ),
      body: Center(
        child: Container(
          child: FutureBuilder<List<dynamic>>(
            future: fetchUsers(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if(snapshot.hasData){
                print(_age(snapshot.data[0]));
                return ListView.builder(
                    padding: EdgeInsets.all(8),
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index){
                      return
                        Card(
                          child: Column(
                            children: <Widget>[
                              ListTile(
                                leading: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(snapshot.data[index]['picture']['large'])),
                                title: Text(_name(snapshot.data[index])),
                                subtitle: Text(_location(snapshot.data[index])),
                                trailing:  Stack(
                                    children: [
                                      Icon(Icons.favorite,size:48,color:Colors.blue),
                                      IconButton(
                                          onPressed: () {
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>FavouriteItem()));
                                            
                                          },
                                          hoverColor: Colors.red,
                                          icon: Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                            size: 30,
                                          )),
                                    ],
                                  )
                              )
                            ],
                          ),
                        );
                    });
              }else {
                return CircularProgressIndicator();
              }
            },


          ),
        ),
      ),
    );
  }
}