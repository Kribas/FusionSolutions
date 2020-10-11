import 'package:flutter/material.dart';
import 'package:fusionsolutions/pages/Signup.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50,),
                    Text("Welcome", style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
                    SizedBox(height: 6,),
                    Text("Sign In to continue", style: TextStyle(fontSize: 20, color: Colors.grey.shade400),),
                    SizedBox(height: 50,),
                  ],
                ),

                Column(

                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Email ID",
                        labelStyle: TextStyle(fontSize: 14,color: Colors.grey.shade400),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.grey.shade300,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.amber,
                          )
                        )
                      ),
                    ),

                    SizedBox(height: 16,),


                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(fontSize: 14,color: Colors.grey.shade400),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.grey.shade300,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.amber,
                              )
                          )
                      ),
                    ),
                    SizedBox(height: 12,),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text("Forgot Password?",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                      ),
                    ),

                    SizedBox(height: 30,),

                    Container(
                      height: 50,
                      width: double.infinity,
                      child: FlatButton(
                          onPressed: () {},
                          child: Ink(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color(0xffff5f6d),
                                    Color(0xffff5f6d),
                                    Color(0xffffc371),
                                  ]
                              )
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              constraints: BoxConstraints(maxWidth: double.infinity, minHeight: 50),
                              child: Text("Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                            ),
                          ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                    SizedBox(height: 16,),
                    Container(
                      height: 50,
                      width: double.infinity,
                      child: FlatButton(
                          onPressed: () {},
                          color: Colors.indigo.shade50,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/facebook.png",height: 18,width: 18,),
                              SizedBox(width: 10,),
                              Text("Connect with Facebook",style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold),),

                            ],
                          )),
                    ),

                    SizedBox(height: 16,),

                    Container(
                      height: 50,
                      width: double.infinity,
                      child: FlatButton(
                          onPressed: () {},
                          color: Colors.indigo.shade50,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/google.png",height: 18,width: 18,),
                              SizedBox(width: 10,),
                              Text("Connect with Google+",style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold),),

                            ],
                          ),
                      ),
                    ),
                    SizedBox(height: 30,),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("I'm a new user.",style: TextStyle(fontWeight: FontWeight.bold),),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return SignUp();
                            }));
                          },
                          child: Text("Sign Up", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),),
                        )
                      ],
                    ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
