import 'package:flutter/material.dart';
Widget country( {required String image, required String title} )
{
  return Container(
    margin: EdgeInsets.only(right: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 280,
          height: 200,

          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage(image),
              // opacity: 0.7,
            ),

            borderRadius: BorderRadius.circular(40),


          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 80 , top: 86),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(title,style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold, color: Colors.white,   ),
                  ),


                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}