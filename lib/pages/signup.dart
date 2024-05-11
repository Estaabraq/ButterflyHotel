// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import '../component.dart';
import 'Database/cubit.dart';
import 'Database/state.dart';
import 'login.dart';

class Signup extends StatelessWidget {
  // const Signup({Key? key}) : super(key: key);
var key_form = GlobalKey<FormState>() ;
var username =TextEditingController() ;
var email =TextEditingController() ;
var password =TextEditingController() ;

@override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>AppCubit()..createDatabase(),
      child: BlocConsumer<AppCubit,AppStates>(
        listener: (context,state){},
        builder: (context,state)=>SafeArea(
          child: Scaffold(
              body: SafeArea(
                child: Scaffold(
                  body: SingleChildScrollView(
                    child: SizedBox(
                      // height: double.infinity,
                      // width: double.infinity,
                      child: Stack(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: Form(
                              key:key_form ,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Sign up",
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontFamily: "myfont",
                                        color: Colors.grey[800]),
                                  ),
                                  SizedBox(
                                    height: 21,
                                  ),
                                  SizedBox(
                                    child: Lottie.asset(
                                      "assets/icons/login1.json",),
                                    height: 140,
                                  ),
                                  SizedBox(
                                    height: 27,
                                  ),
                                  Container(
                                      decoration: BoxDecoration(
                                        color:Color.fromRGBO(205,240,255,.4),
                                        borderRadius: BorderRadius.circular(66),
                                      ),
                                      width: 266,
                                      padding: EdgeInsets.symmetric(horizontal: 16),
                                      child: TextFormField(
                                          controller:email ,
                                          validator: (value) {
                                            if (value!.isEmpty)
                                              return "You Must Enter Email";
                                          },
                                          decoration: InputDecoration(
                                              icon: Icon(
                                                Icons.person,
                                                color: Color.fromRGBO(15, 9, 102,1),
                                              ),
                                              hintText: "Your Email :",
                                              border: InputBorder.none)
                                      )
                                  ),
                                  SizedBox(
                                    height: 23,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color:Color.fromRGBO(205,240,255,.4),
                                      borderRadius: BorderRadius.circular(66),
                                    ),
                                    width: 266,
                                    padding: EdgeInsets.symmetric(horizontal: 16),
                                    child: TextFormField(
                                      controller: username,
                                      validator: (value){
                                        if(value!.isEmpty)
                                          return "You Must Enter Username" ;
                                      },
                                      decoration: InputDecoration(
                                          icon: Icon(
                                            Icons.account_circle,
                                            color: Color.fromRGBO(15, 9, 102,1),
                                          ),
                                          hintText: "Username :",
                                          border: InputBorder.none),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 23,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(205,240,255,.4),
                                      borderRadius: BorderRadius.circular(66),
                                    ),
                                    width: 266,
                                    padding: EdgeInsets.symmetric(horizontal: 16),
                                    child: TextFormField(
                                      controller: password,
                                      validator: (value){
                                        if(value!.isEmpty)
                                          return "You Must Enter password" ;
                                      },
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          suffix: Icon(
                                            Icons.visibility,
                                            color: Color.fromRGBO(15, 9, 102,1),
                                          ),
                                          icon: Icon(
                                            Icons.lock,
                                            color: Color.fromRGBO(15, 9, 102,1),
                                            size: 19,
                                          ),
                                          hintText: "Password :",
                                          border: InputBorder.none),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 17,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      if (key_form.currentState!.validate()) {
                                        AppCubit.get(context).insertToDatabase(email: email.text ,password: password.text,first: username.text) ;
                                        print(login_screen);
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                                      }
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all(Color.fromRGBO(15, 9, 102,1),),
                                      padding: MaterialStateProperty.all(
                                          EdgeInsets.symmetric(
                                              horizontal: 89, vertical: 10)),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(27))),
                                    ),
                                    child: Text(
                                      "Sign up",
                                      style: TextStyle(fontSize: 24),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 33,
                                  ),
                                  SizedBox(
                                    width: 299,
                                    child: Row(
                                      children: [
                                        Expanded(
                                            child: Divider(
                                              thickness: 0.6,
                                              color: Color.fromRGBO(15, 9, 102,1),
                                            )),
                                        Text(
                                          "OR",
                                          style: TextStyle(
                                            color: Color.fromRGBO(15, 9, 102,1),
                                          ),
                                        ),
                                        Expanded(
                                            child: Divider(
                                              thickness: 0.6,
                                              color:Color.fromRGBO(15, 9, 102,1),
                                            )),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(vertical: 27),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          onTap: (){      },
                                          child: Container(
                                            padding: EdgeInsets.all(13),
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border:
                                                Border.all(color: Color.fromRGBO(15, 9, 102,1), width: 1)),
                                            child: SvgPicture.asset(
                                              "assets/icons/facebook.svg",
                                              color: Color.fromRGBO(15, 9, 102,1),
                                              height: 27,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 22,
                                        ),
                                        GestureDetector(
                                          onTap: (){      },
                                          child: Container(
                                            padding: EdgeInsets.all(13),
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border:
                                                Border.all(color: Color.fromRGBO(15, 9, 102,1), width: 1)),
                                            child: SvgPicture.asset(
                                              "assets/icons/google-plus.svg",
                                              color: Color.fromRGBO(15, 9, 102,1),
                                              height: 27,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 22,
                                        ),
                                        GestureDetector(
                                          onTap: (){      },
                                          child: Container(
                                            padding: EdgeInsets.all(13),
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border:
                                                Border.all(color:Color.fromRGBO(15, 9, 102,1), width: 1)),
                                            child: SvgPicture.asset(
                                              "assets/icons/twitter.svg",
                                              color: Color.fromRGBO(15, 9, 102,1),
                                              height: 27,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Positioned(
                          //   left: 0,
                          //   child: Image.asset(
                          //     "assets/images/main_top.png",
                          //     width: 111,
                          //   ),
                          // ),
                          // Positioned(
                          //   bottom: 0,
                          //   right: 0,
                          //   child: Image.asset(
                          //     "assets/images/login_bottom.png",
                          //     width: 111,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
