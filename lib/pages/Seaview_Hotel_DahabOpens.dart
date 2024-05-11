//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


//import 'package:booking_calendar/booking_calendar.dart';


class Seaview_Hotel_Dahab extends StatefulWidget {

  @override
  _Seaview_Hotel_DahabState createState() => _Seaview_Hotel_DahabState();



}
class _Seaview_Hotel_DahabState extends State<Seaview_Hotel_Dahab> {
  DateTime today = DateTime.now();
  var _ratingValue = 0.0;
  int s=0;
  bool isReadMore= false;
  bool pressGeoON = false;
  bool cmbscritta = false;


  @override

  Widget build(BuildContext context) {

    var singleChildScrollView = SingleChildScrollView();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 15, 9, 102),
        title: Text('Seaview Hotel Dahab' ),
        centerTitle: true,
      ),
      body:

      SingleChildScrollView(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          children: [
            SingleChildScrollView(
              child: Column(
                // mainAxisSize: MainAxisSize.min,
                children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 300,
                            child: ListView(
                              scrollDirection: Axis.horizontal, // <-- Like so
                              children:[
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      "assets/images/da1.jpg",
                                      height: 300,
                                      width: 300,
                                      fit: BoxFit.fill,
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      "assets/images/da2.jpg",
                                      height: 300,
                                      width: 300,
                                      fit: BoxFit.fill,
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      "assets/images/da3.jpg",
                                      height: 300,
                                      width: 300,
                                      fit: BoxFit.fill,
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      "assets/images/da4.jpg",
                                      height: 300,
                                      width: 300,
                                      fit: BoxFit.fill,
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      "assets/images/da5.jpg",
                                      height: 300,
                                      width: 300,
                                      fit: BoxFit.fill,
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(

              width: 10,
              height: 10,
            ),

            Padding(

              padding: EdgeInsets.only(left: 4.0, top: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            children: [
                              Text('Seaview Hotel Dahab',

                                style: TextStyle(
                                  fontSize: 25,color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),),

                            ]
                        ),
                        Row(
                            children:[RatingBar(
                                initialRating: 0,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                ratingWidget: RatingWidget(
                                    full: const Icon(Icons.star, color: Color.fromARGB(255, 15, 9, 102)),
                                    half: const Icon(
                                      Icons.star_half,
                                      color: Color.fromARGB(255, 15, 9, 102),
                                    ),
                                    empty: const Icon(
                                      Icons.star_outline,
                                      color: Color.fromARGB(255, 15, 9, 102),
                                    )),
                                onRatingUpdate: (value) {
                                  setState(() {
                                    _ratingValue = value;
                                  });
                                }),
                              SizedBox(width: 20,),
                              Container(
                                alignment: Alignment.topRight,
                                width: 50.0,
                                height: 42.0,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 15, 9, 102),
                                ),
                                child: Center(
                                  child: Text(_ratingValue.toString(),
                                    style: TextStyle(
                                      fontFamily: 'Arial',
                                      fontSize: 18,
                                      color: Colors.white,
                                      height: 1,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),]
                        ),
                        Divider(color: Color.fromRGBO(173, 175, 178, .5),thickness: 8,),
                        SizedBox(height: 10,),
                        Row(
                            children: [
                              Text('Price per night ',
                                style: TextStyle(
                                    fontSize: 18,color: Colors.black
                                ),),
                            ]
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children:[
                            Text(
                              ' 1,111 EGP ',
                              style: TextStyle (
                                fontWeight: FontWeight.bold,
                                fontSize: 25,

                                color: Colors.black,

                              ),
                            ),],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(color: Color.fromRGBO(173, 175, 178, .5),thickness: 8,),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Property Description: ',
                          style: TextStyle (
                            fontWeight: FontWeight.bold,
                            fontSize: 30,

                            color: Colors.black,

                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(

                          children: [

                            buildText("Overlooking the Gulf of Aqaba in Dahab, this beachfront hotel offers rooms with free Wi-Fi and a private balcony. Facilities include an outdoor swimming pool and free private parking.\n"

                               " The air-conditioned rooms of the Sea View Hotel are simply furnished with a minibar, satellite TV, and a private bathroom.\n"

                                " Guests can do several activities at Hotel Sea View, such as diving and horse riding. The hotel also offers a convenient 24-hour reception, currency exchange and laundry facilities, and a tour desk.\n"

                                " Sea View Hotel’s restaurant serves local and international cuisine.\n"

                                " Seaview Hotel is located in the Mashraba Street along the main Dahab promenade. The city centre of Dahab is just a 5-minute drive away.\n",
                            ),
                            ElevatedButton(

                                onPressed: () {
                                  setState(() {
                                    isReadMore =!isReadMore;

                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.black, backgroundColor: Colors.white,// Background color
                                ),
                                child: Text((isReadMore?'Read less' : 'Read more'))),



                          ],
                        ),
                        Divider(color: Color.fromRGBO(173, 175, 178, .5),thickness: 8,),
                        SizedBox(height: 10,),
                        Text(
                          'General Features ',
                          style: TextStyle (
                            fontWeight: FontWeight.bold,
                            fontSize: 30,

                            color: Colors.black,

                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "Baby safety gates    \n"
                              " 24-hour security     \n"
                              " Restaurant     \n"
                              "Private beach area        \n"
                              "No parking available      \n"
                              "Air conditioning       \n"
                              "Tea/Coffee house on site       \n"
                          ,

                          style: TextStyle (
                            fontSize: 20,
                            color: Colors.black,

                          ),
                        ),
                        Divider(color: Color.fromRGBO(173, 175, 178, .5),thickness: 8,),
                        SizedBox(height: 15,),

                        Text(
                          'Amenities ',
                          style: TextStyle (
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.black,

                          ),
                        ),
                        SizedBox(height: 10,),

                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(

                            children: [

                              IconButton(
                                onPressed: () {},
                                color: Color.fromARGB(255, 15, 9, 102),
                                iconSize: 30,
                                icon: Icon(
                                  Icons.wifi,
                                ),
                              ),

                              Text('Free WiFi' ,
                                style: TextStyle(
                                  fontSize: 15.5,
                                  //backgroundColor: Colors.cyan
                                ),) ,
                              IconButton(
                                onPressed: () {},
                                color: Color.fromARGB(255, 15, 9, 102),
                                iconSize: 30,
                                icon: Icon(
                                  Icons.smoke_free_outlined,
                                ),
                              ),
                              Text('Non-smoking rooms' ,
                                style: TextStyle(
                                  fontSize: 15.5,
                                  //backgroundColor: Colors.cyan
                                ),) ,
                              IconButton(
                                onPressed: () {},
                                color: Color.fromARGB(255, 15, 9, 102),
                                iconSize: 30,
                                icon: Icon(
                                  Icons.wheelchair_pickup,
                                ),
                              ),
                              Text('Facilities for disabled guests' ,
                                style: TextStyle(
                                  fontSize: 15.5,
                                  //backgroundColor: Colors.cyan
                                ),) ,


                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  color: Color.fromARGB(255, 15, 9, 102),
                                  iconSize: 30,
                                  icon: Icon(
                                    Icons.airport_shuttle,
                                  ),
                                ),
                                Text('Airport shuttle' ,
                                  style: TextStyle(
                                    fontSize: 15.5,
                                    //backgroundColor: Colors.cyan
                                  ),) ,

                                IconButton(
                                  onPressed: () {},
                                  color:Color.fromARGB(255, 15, 9, 102),
                                  iconSize: 30,
                                  icon: Icon(
                                    Icons.cleaning_services,
                                  ),
                                ),
                                Text('Room service ' ,
                                  style: TextStyle(
                                    fontSize: 15.5,
                                    //backgroundColor: Colors.cyan
                                  ),) ,
                                IconButton(
                                  onPressed: () {},
                                  color: Color.fromARGB(255, 15, 9, 102),
                                  iconSize: 30,
                                  icon: Icon(
                                    Icons.security,
                                  ),
                                ),
                                Text('Safety & security' ,
                                  style: TextStyle(
                                    fontSize: 15.5,
                                    //backgroundColor: Colors.cyan
                                  ),) ,

                              ],
                            ),

                          ),

                        ),
                        Divider(color: Color.fromRGBO(173, 175, 178, .5),thickness: 8,),
                        Column(

                            children: [
                              Container(
                                margin: EdgeInsets.all(20),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: new RoundedRectangleBorder(
                                          borderRadius: new BorderRadius.circular(18.0),
                                          side: BorderSide(color: Color.fromARGB(255, 15, 9, 102),)),
                                      backgroundColor: pressGeoON ? Colors.green : Color.fromARGB(255, 15, 9, 102),
                                      foregroundColor: Colors.white,

                                    ),
                                    child: cmbscritta ? Text("booked") : Text("book"),

                                    onPressed: () {
                                      debugPrint("booked ");
                                      setState(() {
                                        pressGeoON = !pressGeoON;
                                        cmbscritta = !cmbscritta;
                                      });
                                    }
                                ),

                              ),
                            ]
                        ),
                        Divider(color: Color.fromRGBO(173, 175, 178, .5),thickness: 8,),
                        SizedBox(height: 10,),
                      ],

                    ),

                  ),
                ),
              ),
            ),


          ],


        ),

      ),


    );

  }

  Widget buildText(String text){
    final Lines = isReadMore? null : 2;
    return Text(

      text,
      style: TextStyle (
        fontSize: 20,
        color: Colors.black,

      ),
      maxLines: Lines,
      overflow: isReadMore? TextOverflow.visible : TextOverflow.ellipsis,
    );
  }


}