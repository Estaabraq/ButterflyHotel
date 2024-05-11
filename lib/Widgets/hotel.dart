

import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sss/home.dart';
import 'package:sss/pages/details.dart';
Widget popularHotel( {required String image, required String title} )
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
            image: DecorationImage(image: AssetImage(image),
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

                  BorderedText(
strokeWidth: .9,
                    child: Text(title,textAlign: TextAlign.center,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white, ),
                    ),
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