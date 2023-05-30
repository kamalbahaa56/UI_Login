import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: SafeArea(
           child: Container(
               width: double.infinity,
               height: double.infinity,
               color: Colors.white,
             margin: EdgeInsets.only(top: 100),
             child: SingleChildScrollView(
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                Stack(
                  children: [
                    //------ First Container -------------------
                    Container(
                      child: Text("Login",style: TextStyle(color: Colors.orangeAccent,fontSize: 30,fontWeight: FontWeight.bold),),
                      width: double.infinity,
                      height: 400,
                      padding: EdgeInsets.only(top: 30,left: 20),
                      decoration: BoxDecoration(
                        boxShadow:[
                        BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 15),
                        blurRadius: 25.0,
                      ),
                        ],
                        color: Colors.red,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(200),bottomLeft:Radius.circular(100) ),
                      ),

                    ),

                    //-------------------------------------------------------------------
                    //------ Scound Container -------------------
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 300,
                        height: 300,
                        decoration: BoxDecoration(
                          // boxShadow:[
                          //   BoxShadow(
                          //     color: Colors.grey,
                          //     offset: Offset(0, 15),
                          //     blurRadius: 25.0,
                          //   ),
                          // ],
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(150),bottomLeft:Radius.circular(100) ),

                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // First TextFormField
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0),
                              child: TextFormField(
                          decoration:InputDecoration(
                              hintText: "Email",
                            contentPadding: EdgeInsets.all(20.0),

                          ) ,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            // Secound TextFormField
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20.0),
                              child: TextFormField(
                                decoration:InputDecoration(
                                  hintText: "Password",
                                  contentPadding: EdgeInsets.all(20.0),
                                ) ,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            // Button
                            MaterialButton(

                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(20),
                             ),
                              onPressed: (){},
                            child: Text("Login",style: TextStyle(color: Colors.white),),
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ) ,
            SizedBox(
              height: 40,
            ),
            // Row to Create Account
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text("Create new account ?"),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, "Register");
                    },
                      child: Text("Register",style: TextStyle(color: Colors.red),)),
                ],
              ),
            )
          ],
       ),
             ),
           )),
     );
  }
}
