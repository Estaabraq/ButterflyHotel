import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../pages/Helnan.dart';
import '../../../pages/Romance.dart';


class alex extends StatefulWidget {

  @override
  _alexState createState() => _alexState();

}
class _alexState extends State<alex> {
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
              Text("Alex, Egypt" , style: TextStyle(color: Colors.black ,fontSize: 30),)
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
                                  .push(MaterialPageRoute(builder: ((context) => Helnan())));
                            },
                              child:  Container(
                                width: 300,
                                height: 300,

                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(image: AssetImage("assets/images/Helnan1.JPG"),
                                  ),

                                  borderRadius: BorderRadius.circular(0),
                                 // child:Opacity(
                                   // opacity: 0.2,
                                  //)

                                ),
                                child: SingleChildScrollView(
                                  // scrollDirection: Axis.horizontal,

                                  child: Padding(
                                    padding: EdgeInsets.only(left: 18 , top: 200),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Text("  Helnan",textAlign: TextAlign.center,style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white ),
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


                      SingleChildScrollView(
                        scrollDirection:Axis.horizontal ,
                        child: Row(
                          //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MaterialButton(onPressed:(){
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: ((context) => Romance())));
                            },
                              child:  Container(
                                width: 300,
                                height: 300,

                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(image: AssetImage("assets/images/Romance2.JPG" , ),
                                  ),

                                  borderRadius: BorderRadius.circular(0),

                                ),
                                child: SingleChildScrollView(
                                  // scrollDirection: Axis.horizontal,

                                  child: Padding(
                                    padding: EdgeInsets.only(left: 18 , top: 185),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Text("  Romance",textAlign: TextAlign.center,style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white ),
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








