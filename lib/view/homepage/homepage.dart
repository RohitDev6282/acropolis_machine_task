import 'package:acropolis_app/authentication/login.dart';
import 'package:acropolis_app/view/categories/application.dart';
import 'package:acropolis_app/view/categories/books.dart';
import 'package:acropolis_app/view/categories/entertainment.dart';
import 'package:acropolis_app/view/favouriteItem.dart';
import 'package:acropolis_app/view/feedback/feedback.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            drawer: Drawer(
              
              child:ListView(children: <Widget>[
        new UserAccountsDrawerHeader(
          accountName: Text('xxxxxxx'),
          accountEmail: Text('xxxxs645@gmail.com'),
          currentAccountPicture: GestureDetector(
            onTap: () {},
           
            child: CircleAvatar(backgroundColor: Colors.pink,
              child:Icon(Icons.person)
               ),
          ),
        
        ),
       
       
        ListTile(
            onTap: () {
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => AboutUs()));
            },
            leading: Icon(
              Icons.person,
              color: Colors.black,
              //color: Colors.,
            ),
            title: Text(
              "About Us",
              style: TextStyle(
                color: Colors.blue[900],
              ),
            )),
     
        ListTile(
            onTap: () {
             
            },
            leading: Icon(
              Icons.contact_phone,
              color: Colors.blue,
            ),
            title: Text(
              "Contact Us",
              style: TextStyle(
                color: Colors.blue[900],
              ),
            )),
      
        ListTile(
            onTap: () {
             
            },
            leading: Icon(
              Icons.privacy_tip,
              color: Colors.green,
            ),
            title: Text(
              "Privacy Policy",
              style: TextStyle(
                color: Colors.blue[900],
              ),
            )),
      
        ListTile(
            onTap: () {
              
            },
            leading: Icon(
              Icons.security,
              color: Colors.black,
            ),
            title: Text(
              "Term & Condition",
              style: TextStyle(
                color: Colors.blue[900],
              ),
            )),
       
        ListTile(
            onTap: () {
            
            },
            leading: Icon(
              Icons.perm_device_information,
              color: Colors.red,
            ),
            title: Text(
              "User Guidance",
              style: TextStyle(
                color: Colors.blue[900],
              ),
            )),
        
        ListTile(
          onTap: () {
              
          },
          leading: Icon(
            Icons.share,
            color: Colors.blue,
          ),
          title: Text(
            'Share',
            style: TextStyle(color: Colors.blue[900]),
          ),
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          ),
        ),])
            ),
          
            appBar: AppBar(
              actions: [
                  IconButton(
                      icon: Icon(Icons.favorite_outline,color:Colors.pink),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> FavouriteItem()));
                     
                      }),],
                backgroundColor: Colors.pink,
                title: Text("Library", style: TextStyle(color: Colors.white))),
            body: Center(
                child: Container(
                    child: Column(children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[850],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Card(
                          color: Colors.grey[850],
                          shadowColor: Colors.black87,
                          elevation: 4,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) =>  Entertainment()));
                            },
                            child: ListTile(
                              title: Text("Entertainment",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18)),
                              // subtitle: Text("Set new Pin and more",
                                  // style: TextStyle(
                                  //   color: Colors.white,
                                  // )),
                              leading:Container(
                                height:40,
                                width:40,
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: new DecorationImage(
              image: new AssetImage("android/assests/images/entertainment.png"),
              fit: BoxFit.fill,
        
        ),)),
                              trailing: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Card(
                          color: Colors.grey[850],
                          shadowColor: Colors.black87,
                          elevation: 4,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => BookModel()));
                            },
                            child: ListTile(
                              title: Text("Books",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18)),
                              // subtitle: Text("Disable Usage of your Card",
                              //     style: TextStyle(
                              //       color: Colors.white,
                              //     )),
                              leading:Container(
                              
                                height:40,
                                width:40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image:  DecorationImage(
            
              image: AssetImage("android/assests/images/books.jpg"),
              fit: BoxFit.fill,
        
        ),)),
                              trailing: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Card(
                          color: Colors.grey[850],
                          shadowColor: Colors.black87,
                          elevation: 4,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  new MaterialPageRoute(
                                      builder: (context) => Application()));
                            },
                            child: ListTile(
                              title: Text("Application",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18)),
                              // subtitle: Text("Remove or rename card",
                              //     style: TextStyle(
                              //       color: Colors.white,
                              //     )),
                              leading:Container(
                                height:40,
                                width:40,
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: new DecorationImage(
              image: new AssetImage("android/assests/images/application.png"),
              fit: BoxFit.fill,
        
        ),)),
                              trailing: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                     
                    ],
                  ),
                ),
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>Login()));
              }, child: Text("LogOut",
                      style:TextStyle(color:Colors.white,
                      fontSize: 20,
                      ))),
                        ElevatedButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) =>FeedBackPage()));
              }, child: Text("Feedback",
                      style:TextStyle(color:Colors.white,
                      fontSize: 20,
                      ))),

            ])))));
  }
}
