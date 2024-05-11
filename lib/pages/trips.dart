import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class trips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Trips"),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.add)),
              IconButton(onPressed: () {}, icon: Icon(Icons.help_sharp)),
            ],
            backgroundColor: Color.fromARGB(255, 15, 9, 102),
            bottom:
            TabBar(
                indicatorColor: Color.fromARGB(255, 15, 9, 102),
                unselectedLabelColor: Colors.black,

                tabs: [
                  Tab(
                    child: Text("Active"),
                  ),
                  Tab(
                    child: Text("Past"),
                  ),
                  Tab(
                    child: Text("Canceld"),
                  ),
                ]),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TabBarView(children: [

              Column(
                 mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                        Container(
                          height: 250,
                          child:

                            SvgPicture.asset(
                              "assets/icons/planet.svg",),
                        ),


                    Text("Where to next?" ,
                      style:TextStyle(fontSize: 25 ,
                          letterSpacing: 1.0,
                          fontWeight:FontWeight.bold ,
                          color: Colors.black ),),
                    Text("Can't find a booking? Enter your booking details to add it here." ,
                      style: TextStyle(color: Colors.black,
                        letterSpacing: 1.0,)

                      ,) ,
                    TextButton(
                        child: Text("Enter booking details"),

                        onPressed: () {
                          print('Pressed');
                        }
                    )

                  ]),
              Column(

                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 250,
                      child:

                      SvgPicture.asset(
                        "assets/icons/planet.svg",),
                    ),

                    Text("Revisit your favorite places" ,
                      style:TextStyle(fontSize: 25 ,
                          height: 1.5,
                          letterSpacing: 1.0,
                          fontWeight:FontWeight.bold ,
                          color: Colors.black ),),
                    Text("Here you'll find all your past trips and inspiration for your next ones." ,
                      style: TextStyle(color: Colors.black,
                        height: 1.5,
                        letterSpacing: 1.0,)
                      ,) ,
                    TextButton(
                        child: Text("Enter booking details"),
                        onPressed: () {
                          print('Pressed');
                        }
                    )

                  ]),
              Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 250,
                      child:

                      SvgPicture.asset(
                        "assets/icons/planet.svg",),
                    ),

                    Text("Sometimes plans change" ,
                      style:TextStyle(fontSize: 25 ,
                          fontWeight:FontWeight.bold ,
                          height: 1.5,
                          letterSpacing: 1.0,
                          color: Colors.black ),),
                    Text("Here you'll see all trips you've cancled.Maybe next time!" ,

                      style: TextStyle(color: Colors.black,
                        height: 1.5,
                        letterSpacing: 1.0,)
                      ,) ,
                    TextButton(
                        child: Text("Enter booking details"),
                        onPressed: () {
                          print('Pressed');
                        }
                    )

                  ]),
            ]),
          ),
        ));
  }
}