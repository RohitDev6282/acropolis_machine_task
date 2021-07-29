
import 'package:acropolis_app/view/homepage/homepage.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
 final GlobalKey<FormState>_formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Form(
            // key: _formKey,
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
                        child: Form(
                           key: _formKey,
                          child: Column(children: <Widget>[

                            SizedBox(height:100),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: TextFormField(
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter the mobile no.';
                                  }
                                  return null;
                                },

                                keyboardType: TextInputType.number,
                                maxLength: 10,
                                onChanged: (text) {
                                },

                                decoration: InputDecoration(
                                  hintText: 'Enter The Mobile No.',
                                  prefixText: "+91",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  filled: true,
                                  fillColor: Colors.white70,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30.0)),
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.pink, width: 2),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.mobile_friendly_rounded,
                                    color: Colors.grey[400],
                                    size: 25,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: TextFormField(
                                 validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter the password no.';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.number,
                                onChanged: (text) {
                                },

                                maxLength: 6,
                                obscureText: true,

                                decoration: InputDecoration(
                                  hintText: 'Enter The Password',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  filled: true,
                                  fillColor: Colors.white70,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30.0)),
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.pink, width: 2),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Colors.grey[400],
                                    size: 25,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                              child: RaisedButton(
                              
                                onPressed: () async {
                                 
                                    if (_formKey.currentState!.validate()) {

                                  Navigator.push(
                                        context,
                                        new MaterialPageRoute(
                                            builder: (context) => HomePage()));
                                             
                                
                                    }
                                    
                                },  
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(18, 18, 18, 18),
                                  child: Text(
                                    'Get Started',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                                color: Colors.pink[400],
                                textColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                              ),
                            ),
                           
                          ]),
                        )),
                  ],
                ),
              ],
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('android/assests/images/bckg.jpg')),
          ),
        ),
      ),
    );
  }
}
