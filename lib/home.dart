import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sss/pages/Hurghada.dart';
import 'package:sss/pages/alex.dart';
import 'package:sss/pages/cairo.dart';
import 'package:sss/pages/dahab.dart';

import 'package:sss/pages/details.dart';
import 'package:sss/pages/login.dart';
import 'package:sss/pages/profile.dart';
import 'package:sss/pages/sharm.dart';
import 'package:sss/pages/signup.dart';
import 'package:sss/pages/trips.dart';
import '../pages/Helnan.dart';
import '../pages/SUNRISE.dart';
import '../pages/Seaview_Hotel_DahabOpens.dart';
import '../pages/The-Three-Corners-Rihana-Resort.dart';
import '../pages/paadg.dart';
import 'Widgets/country.dart';
import 'Widgets/hotel.dart';
class home extends StatefulWidget {
  //const NormalButtom({key? key}):super(key: key );

  @override
  State<home> createState() => _homeState();

}

class _homeState extends State<home> {
  int _currentIndex = 0;

  List imgList = [
    'assets/images/1.jpeg',
    'assets/images/2.jpeg',
    'assets/images/3.jpeg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: GNav(
            rippleColor: Color.fromARGB(255, 5, 40, 156),
            hoverColor: Color.fromARGB(255, 44, 70, 156),
            tabBorderRadius: 100,
            haptic: true,
            tabShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 49, 114, 189).withOpacity(0.1),
                  blurRadius: 8)
            ],
            curve: Curves.easeOutExpo,
            duration: Duration(milliseconds: 900),
            gap: 8,
            activeColor: Color.fromARGB(255, 15, 9, 102),
            iconSize: 30,
            tabBackgroundColor: Color.fromARGB(255, 40, 12, 116).withOpacity(0.1),
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            tabs: [
              GButton(
                text: 'Home',
                icon: Icons.home_outlined,
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: ((context) => home())));
                },
              ),
              GButton(
                text: 'Trips',
                icon: Icons.airplane_ticket_outlined,
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: ((context) => trips())));
                },
              ),
              // GButton(text: 'Saved',
              //     icon: Icons.bookmark_border,
              //   onPressed: () {
              //   Navigator.of(context)
              //       .push(MaterialPageRoute(builder: ((context) => Login())));
              // },
              // ),
              GButton(text: 'Profile', icon: Icons.person,
                onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: ((context) => Profile())));},),
              ]),
      resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        //  child:SingleChildScrollView(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            children: [
              IconButton(onPressed: () {} ,
                  icon: Icon(Icons.sort,
                      color:Colors.black )
              )
            ],
          ),
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10 , horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Where would you like to go ? ',
                  style: TextStyle(color:Colors.black,
                      fontSize: 30 ,
                      fontWeight: FontWeight.bold
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(10),
                  shadowColor: Colors.black,
                  child: TextField(
                      textAlign: TextAlign.start,
                      textAlignVertical: TextAlignVertical.center,

                      decoration:
                      InputDecoration(hintText: "search for place",
                        prefixIcon: Icon(Icons.search , color: Colors.black87 ,),
                        border:   InputBorder.none,

                      )
                  ),
                ),

                SizedBox(
                  height: 30,
                ),
                Text('Offers ' , style: TextStyle(color: Colors.black87 , fontSize: 30 , fontWeight: FontWeight.bold) ,),
                SizedBox(
                  height: 20,
                ),
                CarouselSlider(
                  items: imgList.map((imageUrl) {
                    return Container(
                      width: double.infinity,
                      child: Image.asset(
                        imageUrl,
                        fit: BoxFit.fill,
                      ),
                    );
                  }).toList(),
                  options: CarouselOptions(
                    onPageChanged: ((index, _) {
                      setState(() {
                        _currentIndex = index;
                      });
                    }),
                    enableInfiniteScroll: false,
                    autoPlayInterval: const Duration(seconds: 4),
                    autoPlayCurve: Curves.easeIn,
                    pageSnapping: false,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    height: 186,
                    initialPage: 1,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Cities ' , style: TextStyle(color: Colors.black87 , fontSize: 30 , fontWeight: FontWeight.bold) ,),

                SizedBox(
                  height: 30,
                ),


                SingleChildScrollView(
                  scrollDirection:Axis.horizontal ,
                  child: Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                      MaterialButton(onPressed:(){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: ((context) => cairo())));
                },


                  child:  Container(
                    width: 280,
                    height: 200,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(image: AssetImage("assets/images/cairoEgypt.png.jpg"),
                      ),

                      borderRadius: BorderRadius.circular(40),

                    ),
                    child: SingleChildScrollView(
                      // scrollDirection: Axis.horizontal,

                      child: Padding(
                        padding: EdgeInsets.only(left: 72 , top: 88),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text("    Cairo",textAlign: TextAlign.center,style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white ),
                            ),



                          ],
                        ),
                      ),
                    ),
                  ),

                ),


                 //   children: [
                   //   country(
                     //     image:"assets/images/cairoEgypt.png.jpg",
                       //   title:"    Cairo"),


                        MaterialButton(onPressed:(){
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: ((context) => hurghada())));
                        },


                          child:  Container(
                            width: 280,
                            height: 200,

                            decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(image: AssetImage("assets/images/ha.jpg"),
                              ),

                              borderRadius: BorderRadius.circular(40),

                            ),
                            child: SingleChildScrollView(
                              // scrollDirection: Axis.horizontal,

                              child: Padding(
                                padding: EdgeInsets.only(left: 72 , top: 88),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text(" Hurghada",textAlign: TextAlign.center,style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white ),
                                    ),



                                  ],
                                ),
                              ),
                            ),
                          ),

                        ),




                        MaterialButton(onPressed:(){
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: ((context) => alex())));
                        },


                          child:  Container(
                            width: 280,
                            height: 200,

                            decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(image: AssetImage("assets/images/al.jpg"),
                              ),

                              borderRadius: BorderRadius.circular(40),

                            ),
                            child: SingleChildScrollView(
                              // scrollDirection: Axis.horizontal,

                              child: Padding(
                                padding: EdgeInsets.only(left: 72 , top: 88),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text("Alexandria",textAlign: TextAlign.center,style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white ),
                                    ),



                                  ],
                                ),
                              ),
                            ),
                          ),

                        ),


                       // country(
                         // image:"assets/assets/images/alexx}.png.jpg",
                          //title:"Alexandria"),



                        MaterialButton(onPressed:(){
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: ((context) => dahab())));
                        },


                          child:  Container(
                            width: 280,
                            height: 200,

                            decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(image: AssetImage("assets/images/da.jpg"),
                              ),

                              borderRadius: BorderRadius.circular(40),

                            ),
                            child: SingleChildScrollView(
                              // scrollDirection: Axis.horizontal,

                              child: Padding(
                                padding: EdgeInsets.only(left: 72 , top: 88),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text("    Dahab",textAlign: TextAlign.center,style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white ),
                                    ),



                                  ],
                                ),
                              ),
                            ),
                          ),

                        ),


                     // country(
                       //   image:"assets/assets/images/dahhab}.png.jpg",
                         // title:"   Dahab"),




                        MaterialButton(onPressed:(){
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: ((context) => sharm())));
                        },


                          child:  Container(
                            width: 280,
                            height: 200,

                            decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(image: AssetImage("assets/images/sh.png.jpg"),
                              ),

                              borderRadius: BorderRadius.circular(40),

                            ),
                            child: SingleChildScrollView(
                              // scrollDirection: Axis.horizontal,

                              child: Padding(
                                padding: EdgeInsets.only(left: 41 , top: 88),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text("Sharm El-Sheikh",textAlign: TextAlign.center,style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white ),
                                    ),



                                  ],
                                ),
                              ),
                            ),
                          ),

                        ),


                     // country(
                       //   image:"assets/images/sh.png.jpg",
                         // title:"   Sharm El-Sheikh"),



                    ],
                  ),
                ),



                SizedBox(
                  height: 30,
                ),


                Text('Popular Hotel ' , style: TextStyle(color: Colors.black87 , fontSize: 30 , fontWeight: FontWeight.bold) ,),

                SizedBox(
                  height: 30,
                ),

                SingleChildScrollView(
                  scrollDirection:Axis.horizontal ,
                  child: Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [


                      MaterialButton(onPressed:(){
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: ((context) => Seaview_Hotel_Dahab())));
                      },


                        child:  Container(
                          width: 280,
                          height: 200,

                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(image: AssetImage("assets/images/da1.jpg"),
                            ),

                            borderRadius: BorderRadius.circular(40),

                          ),
                          child: SingleChildScrollView(
                            // scrollDirection: Axis.horizontal,

                            child: Padding(
                              padding: EdgeInsets.only(left: 2 , top: 150),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text("  Seaview",textAlign: TextAlign.center,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white ),
                                  ),



                                ],
                              ),
                            ),
                          ),
                        ),

                      ),






                      MaterialButton(onPressed:(){
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: ((context) => Details())));
                      },


                        child:  Container(
                          width: 280,
                          height: 200,

                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(image: AssetImage("assets/images/NilePlaza1.JPG"),
                            ),

                            borderRadius: BorderRadius.circular(40),

                          ),
                          child: SingleChildScrollView(
                            // scrollDirection: Axis.horizontal,

                            child: Padding(
                              padding: EdgeInsets.only(left: 2 , top: 150),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text("  Nile Plaza",textAlign: TextAlign.center,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white ),
                                  ),



                                ],
                              ),
                            ),
                          ),
                        ),

                      ),
                      // InkWell(
                      //   onTap: () {
                      //     Navigator.of(context)
                      //         .push(MaterialPageRoute(builder: ((context) => Details())));
                      //   }, // Image tapped
                      //   splashColor: Colors.white10, // Splash color over image
                      //   child: Ink.image(
                      //     fit: BoxFit.cover, // Fixes border issues
                      //     width: 100,
                      //     height: 100,
                      //     image: AssetImage(
                      //         'assets/images/hotel1.jpg',
                      //     ),
                      //   ),
                      // ),



                      MaterialButton(onPressed:(){
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: ((context) => Sunrise())));
                      },


                        child:  Container(
                          width: 280,
                          height: 200,

                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(image: AssetImage("assets/images/hotel1.jpg"),
                            ),

                            borderRadius: BorderRadius.circular(40),

                          ),
                          child: SingleChildScrollView(
                            // scrollDirection: Axis.horizontal,

                            child: Padding(
                              padding: EdgeInsets.only(left: 2 , top: 150),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text("  Sunrise Garden Beach Resort",textAlign: TextAlign.center,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white ),
                                  ),



                                ],
                              ),
                            ),
                          ),
                        ),

                      ),





                      MaterialButton(onPressed:(){
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: ((context) => Helnan())));
                      },


                        child:  Container(
                          width: 280,
                          height: 200,

                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(image: AssetImage("assets/images/Helnan5.JPG"),
                            ),

                            borderRadius: BorderRadius.circular(40),

                          ),
                          child: SingleChildScrollView(
                            // scrollDirection: Axis.horizontal,

                            child: Padding(
                              padding: EdgeInsets.only(left: 2 , top: 150),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text("  Helnan Royal Hotel",textAlign: TextAlign.center,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white ),
                                  ),



                                ],
                              ),
                            ),
                          ),
                        ),

                      ),




                      MaterialButton(onPressed:(){
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: ((context) => Thethree_Corners_Rihana_Resort())));
                      },


                        child:  Container(
                          width: 280,
                          height: 200,

                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(image: AssetImage("assets/images/sshh1.jpg"),
                            ),

                            borderRadius: BorderRadius.circular(40),

                          ),
                          child: SingleChildScrollView(
                            // scrollDirection: Axis.horizontal,

                            child: Padding(
                              padding: EdgeInsets.only(left: 2 , top: 150),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text("  three_Corners_Rihana_Resort",textAlign: TextAlign.center,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white ),
                                  ),



                                ],
                              ),
                            ),
                          ),
                        ),

                      ),




                      //   popularHotel(
                     //     image:"assets/images/hotel1.jpg",
                       //   title:"  Sunrise Garden Beach Resort"),

                     // popularHotel(
                       //   image:"assets/images/hotel4.jpg",
                         // title:"     Tolip Hotel Alexandria"),

                    //  popularHotel(
                      //    image:"assets/images/ss.png.jpg",
                        //  title:"   Safir Dahab Resort"),


                  //    popularHotel(
                    //      image:"assets/images/hotel3.jpg",
                      //    title:"   Viva Sharm"),



                    ],
                  ),
                ),

              ],

            ),

          ),
        )


    );
  }

}