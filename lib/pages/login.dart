// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sss/component.dart';
import 'package:sss/pages/signup.dart';

import '../home.dart';
import 'Database/cubit.dart';
import 'Database/state.dart';

class Login extends StatelessWidget {
 // const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var loggin = GlobalKey<FormState>() ;
    var email =TextEditingController() ;
    var password = TextEditingController() ;
    return BlocProvider(
      create: (context)=>AppCubit()..createDatabase(),
      child: BlocConsumer<AppCubit,AppStates>(
        listener: (context,state){},
        builder: (context , state)=>SafeArea(
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
                              key: loggin,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 35,
                                  ),
                                  Text(
                                    "Log in",
                                    style: TextStyle(fontSize: 33, fontFamily: "myfont"),
                                  ),
                                  SizedBox(
                                    height: 35,
                                  ),
                                  SizedBox(
                                    height: 200,
                                    child: Lottie.asset(
                                      "assets/icons/signup.json",
                                      width: 288,
                                    ),
                                  ),

                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(205,240,255,.4),
                                      borderRadius: BorderRadius.circular(66),
                                    ),
                                    width: 266,
                                    padding: EdgeInsets.symmetric(horizontal: 16),
                                    child: TextFormField(
                                      controller: email,
                                      validator:(value){
                                      bool t = false ;
                                      if (value!.isEmpty)
                                      return 'You have to enter the email';
                                      for (int i = 0 ; i<login_screen.length ; i++)
                                      {
                                      if (email.text ==login_screen[i]['email']) {
                                      t = true ;
                                      }
                                      }
                                      if (t== false)
                                      {
                                      return 'Email isn\'t found' ;
                                      }
                                      },
                                      decoration: InputDecoration(
                                          icon: Icon(
                                            Icons.person,
                                            color: Color.fromRGBO(15, 9, 102,1),
                                          ),
                                          hintText: "Your Email :",
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
                                      validator:(value){
                                        bool test = false ;
                                        if(value!.isEmpty)
                                          return "You Must Enter Password" ;
                                        for(int i = 0 ; i <login_screen.length;i++)
                                        {
                                          if (password.text == login_screen[i]['password'])
                                            test = true;
                                        }
                                        if(test == false)
                                          return "Your password isnot correct" ;
                                      } ,
                                      obscureText: AppCubit.get(context).obscure,
                                      decoration: InputDecoration(
                                          suffix: IconButton(onPressed: (){
                                            AppCubit.get(context).get_obscure();
                                            },icon: Icon(AppCubit.get(context).ic,)
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
                                      if(loggin.currentState!.validate())
                                        {
                                          Navigator.of(context)
                                              .push(MaterialPageRoute(builder: ((context) => home())));
                                        }
                                    },

                                    style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all(Color.fromRGBO( 15, 9, 102,1),),
                                      padding: MaterialStateProperty.all(
                                          EdgeInsets.symmetric(
                                              horizontal: 106, vertical: 10)),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(27))),
                                    ),
                                    child: Text(
                                      "login",
                                      style: TextStyle(fontSize: 24),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 17,
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Don't have an accout? "),

                                      GestureDetector(
                                          onTap: (){Navigator.of(context)
                                              .push(MaterialPageRoute(builder: ((context) => Signup())));},
                                          child: Text(" Sign up", style: TextStyle(fontWeight: FontWeight.bold),)),

                                    ],
                                  )
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
      )
    );
  }
}
