import 'package:acropolis_app/authentication/login.dart';
import 'package:flutter/material.dart';
class SignUp extends StatefulWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
 
  TextEditingController name = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController mobile = new TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        body: Container(
          child: ListView(
            children: [
              Container(
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                        child: Container(
                            height:180,
                            color:Colors.orange,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextFormField(
                          controller: name,
                          keyboardType: TextInputType.text,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              {
                                return "Please enter name";
                              }
                            //  if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value))

                              return null;
                            }
                          },
                          // onSaved: (String?name) {},
                          decoration: InputDecoration(
                              hintText: 'Name',
                              hintStyle: TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: Colors.white70,
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.pink, width: 2),
                              ),
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.grey[400],
                                size: 25,
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextFormField(
                          controller: email,
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              {
                                return "Please enter  email";
                              }
                            // if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value))

                              return null;
                            }
                          },
                          // onSaved: (String?_email) {},
                          decoration: InputDecoration(
                              hintText: 'E-Mail',
                              hintStyle: TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: Colors.white70,
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.pink, width: 2),
                              ),
                              prefixIcon: Icon(
                                Icons.mail,
                                color: Colors.grey[400],
                                size: 25,
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: TextFormField(
                          controller: mobile,
                          obscureText: true,
                          autocorrect: true,
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter the phone no.";
                            }
                            return null;
                          },
                         onSaved: (String?mobile) {},
                          keyboardType: TextInputType.number,
                          maxLength: 10,
                          decoration: InputDecoration(
                              hintText: 'Mobile No.',
                              hintStyle: TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: Colors.white70,
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30.0)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.pink, width: 2),
                              ),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.grey[400],
                                size: 25,
                              )),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                            child: Container(
                              child: Text("Already Have an account ?"),
                            ),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Login();
                                }));
                              },
                              child: Text(
                                "Login Instead",
                                style: TextStyle(color: Colors.pink[400]),
                              ))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: TextButton(
                            onPressed:(){
                            //  signup,
                            //  () {
                              if (_formkey.currentState!.validate()) {
                                // RegisterationUser();

                                print("Successful");
                              } else {
                                print("Unsuccessfull");
                              }
                              // Navigator.push(context,
                              //     MaterialPageRoute(builder: (_) => Loginpage()));
                              //     signup();
                            },
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: Text(
                                'Register',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
             RaisedButton(onPressed:(){}, child: Text('Get data ')),
            ],
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