import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'Steigenberger.dart';
import 'details.dart';

class cairo extends StatefulWidget {

  @override
  _cairoState createState() => _cairoState();

}
class _cairoState extends State<cairo> {
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
                Text("Cairo, Egypt" , style: TextStyle(color: Colors.black ,fontSize: 30),)
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
                          .push(MaterialPageRoute(builder: ((context) => Details())));
                    },
                      child:  Container(
                        width: 300,
                        height: 300,

                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(image: AssetImage("assets/images/NilePlaza1.JPG"),
                          ),

                          borderRadius: BorderRadius.circular(0),

                        ),
                        child: SingleChildScrollView(
                          // scrollDirection: Axis.horizontal,

                          child: Padding(
                            padding: EdgeInsets.only(left: 18 , top: 200),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text("  Nile Plaza",textAlign: TextAlign.center,style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white ),
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

              Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MaterialButton(onPressed:(){
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: ((context) => Steigenberger())));
                  },
                    child:  Container(
                      width: 300,
                      height: 300,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(image: AssetImage("assets/images/Steigenberger2.JPG"),
                        ),

                        borderRadius: BorderRadius.circular(0),

                      ),
                      child: SingleChildScrollView(
                        // scrollDirection: Axis.horizontal,

                        child: Padding(
                          padding: EdgeInsets.only(left: 18 , top: 200),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text("  Steigenberger",textAlign: TextAlign.center,style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                  ),





                ],
              ),

            ],

          ),
        ),
   ], ),),
        ));
  }
  }








