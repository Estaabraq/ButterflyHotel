// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:hotels/pages/login.dart';
// import 'package:hotels/pages/profile.dart';
// import 'package:hotels/pages/signup.dart';
// import 'package:hotels/pages/trips.dart';
// import 'Widgets/country.dart';
// import 'Widgets/hotel.dart';
// import 'details.dart';
// class home extends StatefulWidget {
//   //const NormalButtom({key? key}):super(key: key );
//
//   @override
//   State<home> createState() => _homeState();
//
// }
//
// class _homeState extends State<home> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         bottomNavigationBar: GNav(
//             rippleColor: Color.fromARGB(255, 5, 40, 156),
//             hoverColor: Color.fromARGB(255, 44, 70, 156),
//             tabBorderRadius: 100,
//             haptic: true,
//             tabShadow: [
//               BoxShadow(
//                   color: Color.fromARGB(255, 49, 114, 189).withOpacity(0.1),
//                   blurRadius: 8)
//             ],
//             curve: Curves.easeOutExpo,
//             duration: Duration(milliseconds: 900),
//             gap: 8,
//             activeColor: Color.fromARGB(255, 15, 9, 102),
//             iconSize: 30,
//             tabBackgroundColor: Color.fromARGB(255, 40, 12, 116).withOpacity(0.1),
//             padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
//             tabs: [
//               GButton(
//                 text: 'Home',
//                 icon: Icons.home_outlined,
//                 onPressed: () {
//                   Navigator.of(context)
//                       .push(MaterialPageRoute(builder: ((context) => home())));
//                 },
//               ),
//               GButton(
//                 text: 'Trips',
//                 icon: Icons.airplane_ticket_outlined,
//                 onPressed: () {
//                   Navigator.of(context)
//                       .push(MaterialPageRoute(builder: ((context) => trips())));
//                 },
//               ),
//               // GButton(text: 'Saved',
//               //     icon: Icons.bookmark_border,
//               //   onPressed: () {
//               //   Navigator.of(context)
//               //       .push(MaterialPageRoute(builder: ((context) => Login())));
//               // },
//               // ),
//               GButton(text: 'Profile', icon: Icons.person,
//                 onPressed: () {
//                   Navigator.of(context)
//                       .push(MaterialPageRoute(builder: ((context) => Profile())));},),
//             ]),
//         resizeToAvoidBottomInset: false,
//         backgroundColor: Colors.white,
//         //  child:SingleChildScrollView(
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           elevation: 0,
//           title: Row(
//             children: [
//               IconButton(onPressed: () {} ,
//                   icon: Icon(Icons.sort,
//                       color:Colors.black )
//               )
//             ],
//           ),
//         ),
//
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(vertical: 10 , horizontal: 30),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text('Where would you like to go ? ',
//                   style: TextStyle(color:Colors.black,
//                       fontSize: 30 ,
//                       fontWeight: FontWeight.bold
//                   ),
//                 ),
//
//                 SizedBox(
//                   height: 30,
//                 ),
//
//                 Material(
//                   elevation: 10,
//                   borderRadius: BorderRadius.circular(10),
//                   shadowColor: Colors.black,
//                   child: TextField(
//                       textAlign: TextAlign.start,
//                       textAlignVertical: TextAlignVertical.center,
//
//                       decoration:
//                       InputDecoration(hintText: "search for place",
//                         prefixIcon: Icon(Icons.search , color: Colors.black87 ,),
//                         border:   InputBorder.none,
//
//                       )
//                   ),
//                 ),
//
//                 SizedBox(
//                   height: 30,
//                 ),
//
//                 Text('places ' , style: TextStyle(color: Colors.black87 , fontSize: 30 , fontWeight: FontWeight.bold) ,),
//
//                 SizedBox(
//                   height: 30,
//                 ),
//
//
//                 SingleChildScrollView(
//                   scrollDirection:Axis.horizontal ,
//                   child: Row(
//                     //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       country(
//                           image:"assets/images/cairoEgypt.png.jpg",
//                           title:"    Cairo"),
//
//                       country(
//                           image:"assets/images/ha.jpg",
//                           title:" Hurghada"),
//
//                       country(
//                           image:"assets/images/alexx}.png.jpg",
//                           title:"Alexandria"),
//
//                       country(
//                           image:"assets/images/dahhab}.png.jpg",
//                           title:"   Dahab"),
//
//
//                       country(
//                           image:"assets/images/sh.png.jpg",
//                           title:"   Sharm El-Sheikh"),
//
//
//
//                     ],
//                   ),
//                 ),
//
//
//
//                 SizedBox(
//                   height: 30,
//                 ),
//
//
//                 Text('popular Hotel ' , style: TextStyle(color: Colors.black87 , fontSize: 30 , fontWeight: FontWeight.bold) ,),
//
//                 SizedBox(
//                   height: 30,
//                 ),
//
//                 SingleChildScrollView(
//                   scrollDirection:Axis.horizontal ,
//                   child: Row(
//                     //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//
//                       MaterialButton(onPressed:(){
//                         Navigator.of(context)
//                             .push(MaterialPageRoute(builder: ((context) => Details())));
//                       },
//
//
//                         child:  Container(
//                           width: 280,
//                           height: 200,
//
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             image: DecorationImage(image: AssetImage("assets/image/NilePlaza1.JPG"),
//                             ),
//
//                             borderRadius: BorderRadius.circular(40),
//
//                           ),
//                           child: SingleChildScrollView(
//                             // scrollDirection: Axis.horizontal,
//
//                             child: Padding(
//                               padding: EdgeInsets.only(left: 2 , top: 150),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//
//                                   Text("  Nile Plaza",textAlign: TextAlign.center,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white ),
//                                   ),
//
//
//
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//
//                       ),
//
//                       popularHotel(
//                           image:"assets/images/ha.jpg",
//                           title:"  Hurghada"),
//
//                       popularHotel(
//                           image:"assets/images/alexx}.png.jpg",
//                           title:"   Alexandria"),
//
//                       popularHotel(
//                           image:"assets/images/dahhab}.png.jpg",
//                           title:"   Dahab"),
//
//
//                       popularHotel(
//                           image:"assets/images/sh.png.jpg",
//                           title:"   Sharm El-Sheikh"),
//
//
//
//                     ],
//                   ),
//                 ),
//
//               ],
//
//             ),
//
//           ),
//         )
//
//
//     );
//   }
//
// }