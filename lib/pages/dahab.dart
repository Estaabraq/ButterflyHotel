import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../pages/Seaview_Hotel_DahabOpens.dart';
import 'paadg.dart';


class dahab extends StatefulWidget {

  @override
  _dahabState createState() => _dahabState();

}
class _dahabState extends State<dahab> {
  var child;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,

        /* body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled)
        {
          return<Widget>[
            SliverAppBar(
              expandedHeight: 300,
            )
          ];
        },
      ),
*/
        appBar: AppBar(

          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            children: [
              Icon(
                Icons.location_on,
                color: Colors.blue,
                size: 30,
              ),
              Text("Dahab, Egypt" , style: TextStyle(color: Colors.black ,fontSize: 30),)
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

                Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(10),
                  shadowColor: Colors.black,
                  child: TextField(
                      textAlign: TextAlign.start,
                      textAlignVertical: TextAlignVertical.center,

                      decoration:
                      InputDecoration(hintText: "search for hotel",
                        prefixIcon: Icon(Icons.search , color: Colors.black87 ,),
                        border:   InputBorder.none,

                      )
                  ),
                ),

                SizedBox(
                  height: 30,
                ),

                SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [


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
                                width: 300,
                                height: 300,

                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(image: AssetImage("assets/images/da1.jpg"),
                                  ),

                                  borderRadius: BorderRadius.circular(0),

                                ),
                                child: SingleChildScrollView(
                                  // scrollDirection: Axis.horizontal,

                                  child: Padding(
                                    padding: EdgeInsets.only(left: 18 , top: 210),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Text("  Seaview",textAlign: TextAlign.center,style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white ),
                                        ),

                                      ],
                                    ),
                                  ),
                                ),
                              ),

                            ),
                          ],
                        ),
                      ),

                    //  SizedBox(
                      //  height: 5,
                      //),

                      SingleChildScrollView(
                        scrollDirection:Axis.horizontal ,
                        child: Row(
                          //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MaterialButton(onPressed:(){
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: ((context) => TheCastle_Hotel())));
                            },
                              child:  Container(
                                width: 300,
                                height: 300,

                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(image: AssetImage("assets/images/ssh1.jpg"),
                                  ),

                                  borderRadius: BorderRadius.circular(0),

                                ),
                                child: SingleChildScrollView(
                                  // scrollDirection: Axis.horizontal,

                                  child: Padding(
                                    padding: EdgeInsets.only(left: 18 , top: 210),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Text("  TheCastle",textAlign: TextAlign.center,style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                            ),





                          ],
                        ),
                      ),

                    ],

                  ),
                ),
              ], ),),
        ));
  }
}








