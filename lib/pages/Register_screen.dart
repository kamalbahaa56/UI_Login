import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:Container(
            color: Colors.redAccent,
            width: double.infinity,
            height:double.infinity,
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(top:100),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Container Register
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height *.7,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100)
                            ,bottomLeft:Radius.circular(100)
                        ),
                      ),
                      child:Column(
                        children: [
                          Text("Register",style: TextStyle(color: Colors.redAccent,fontSize: 40,fontWeight: FontWeight.bold),),
                          SizedBox(
                            height: 20,
                          ),
                          // Name FormField
                          TextFormField(
                        decoration: InputDecoration(
                          hintText: "name",
                          contentPadding: EdgeInsets.all(20),
                          suffixIcon: Icon(Icons.person),
                        ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          // email FormField
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "email",
                              contentPadding: EdgeInsets.all(20),
                              suffixIcon: Icon(Icons.email),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          // Password FormField
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Password",
                              contentPadding: EdgeInsets.all(20),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // Register Button
                          MaterialButton(
                              onPressed: (){},
                              child: Text("Register",style: TextStyle(color: Colors.white),),
                             color: Colors.blue,
                            minWidth: 150,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          // 2 Containars facebook & google
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            // Container google
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow:[
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0,2),
                                      blurRadius: 1.0,
                                    ),
                                  ],
                                ),
                                width: 60,
                                height: 60,

                                child: SvgPicture.asset("assets/images/iconsgoogle.svg",),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              // FaceBook
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow:[
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0,2),
                                      blurRadius: 1.0,
                                    ),
                                  ],
                                ),
                                width: 60,
                                height: 60,

                                child: SvgPicture.asset("assets/images/facebook.svg",color: Colors.blue,),
                              ),
                            ],
                          ) ,
                          SizedBox(
                            height: 20,
                          ),
                          // chooes your pic Button
                          MaterialButton(
                            onPressed: (){},
                            child: Text("chooes your pic",style: TextStyle(color: Colors.white),),
                            color: Colors.orange[100],
                            minWidth: 150,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ],
                      ) ,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Row(

                        children: [
                          Text("have account",style: TextStyle(color: Colors.white,),),
                          GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, "Login");
                            },
                              child: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ) ,
      ),
    );
  }
}
