
import 'dart:convert';
import 'package:acropolis_app/model/bookModel.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import '../favouriteItem.dart';



 Future<List<Job>> _fetchJobs() async {

    final response = await http
      .get(Uri.parse('https://mock-json-service.glitch.me/'));

        if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((job) => new Job.fromJson(job)).toList();
    } else {
      throw Exception('Failed to load jobs from API');
    }
  }

 
class BookModel extends StatefulWidget {
  const BookModel({ Key? key }) : super(key: key);

  @override
  _BookModelState createState() => _BookModelState();
}

class _BookModelState extends State<BookModel> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
            appBar: AppBar(backgroundColor: Colors.pink,
              title:Text("Books")),
        body: FutureBuilder<List<Job>>(
          future: _fetchJobs(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Job>? data = snapshot.data;
              return _jobsListView(data);
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
ListView _jobsListView(data) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return _tile(data[index].position, data[index].company, Icons.work);
        });
  }
  ListTile _tile(String title, String subtitle, IconData icon) => ListTile(
        title: Text(title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            )),
        subtitle: Text(subtitle),
        leading: Icon(
          icon,
          color: Colors.blue[500],
        
        ),
        trailing:  Stack(
                                    children: [
                                      Icon(Icons.favorite,size:48,color:Colors.blue),
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
      ));