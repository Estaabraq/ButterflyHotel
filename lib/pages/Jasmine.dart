//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


//import 'package:booking_calendar/booking_calendar.dart';


class Jasmine extends StatefulWidget {

  @override
  _JasmineState createState() => _JasmineState();

}
class _JasmineState extends State<Jasmine> {
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
        title: Text('Jasmine Pyramids Hotel' ),
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
                                      "assets/images/Luxury3.JPG",
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
                                      "assets/images/Luxury4.JPG",
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
                                      "assets/images/Luxury1.JPG",
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
                                      "assets/images/Luxury2.JPG",
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
                                      "assets/images/Luxury5.JPG",
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
                              Text('Jasmine Pyramids Hotel',

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
                              ' 2,222 EGP ',
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

                            buildText("Jasmine Pyramids Hotel has a restaurant, outdoor swimming pool, a bar and garden in Cairo. Boasting family rooms,"
                                "this property also provides guests with a terrace. The accommodation features a 24-hour front desk, room service and currency exchange for guests.\n"
                                "At the hotel rooms are equipped with air conditioning, a seating area, a flat-screen TV with satellite channels, a safety deposit box and a private bathroom with a hot tub, slippers and a hairdryer.\n"
                                "  At Jasmine Pyramids Hotel each room is fitted with bed linen and towels."
                                "Guests at the accommodation can enjoy a continental or a buffet breakfast."
                                "Giza Pyramids is 600 m from Jasmine Pyramids Hotel, while Great Sphinx is 2.1 km from the property.\n "
                                " The nearest airport is Cairo International, 30 km from the hotel, and the property offers a paid airport shuttle service.\n"
                                ,
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
                          "Tea/coffee maker in all rooms   \n"
                              " Breakfast     \n"
                              " Restaurant     \n"
                              " Room service        \n"
                              " Free parking      \n"
                              " Family rooms      \n"
                              " 1 swimming pool      \n"
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
                                  Icons.remove_red_eye_outlined,
                                ),
                              ),

                              Text('View' ,
                                style: TextStyle(
                                  fontSize: 15.5,
                                  //backgroundColor: Colors.cyan
                                ),) ,
                              IconButton(
                                onPressed: () {},
                                color: Color.fromARGB(255, 15, 9, 102),
                                iconSize: 30,
                                icon: Icon(
                                  Icons.pool_outlined,
                                ),
                              ),
                              Text('Swimming pool' ,
                                style: TextStyle(
                                  fontSize: 15.5,
                                  //backgroundColor: Colors.cyan
                                ),) ,
                              IconButton(
                                onPressed: () {},
                                color: Color.fromARGB(255, 15, 9, 102),
                                iconSize: 30,
                                icon: Icon(
                                  Icons.device_thermostat,
                                ),
                              ),
                              Text('Air conditioning' ,
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
                                  color:Color.fromARGB(255, 15, 9, 102),
                                  iconSize: 30,
                                  icon: Icon(
                                    Icons.cleaning_services,
                                  ),
                                ),
                                Text('Daily housekeeping ' ,
                                  style: TextStyle(
                                    fontSize: 15.5,
                                    //backgroundColor: Colors.cyan
                                  ),) ,
                                IconButton(
                                  onPressed: () {},
                                  color: Color.fromARGB(255, 15, 9, 102),
                                  iconSize: 30,
                                  icon: Icon(
                                    Icons.chair_outlined,
                                  ),
                                ),
                                Text('Terrace' ,
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