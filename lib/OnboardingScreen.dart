// import 'package:flutter/material.dart';
//
// class OnboaedingView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(''),
//         // Add your desired styling for the app bar
//       ),
//       body: Center(
//         child: Text('hii'),
//       ),
//     );
//   }
// }
//
//

import 'package:flutter/material.dart';
import 'package:sss/pages/signup.dart';
import 'home.dart';
import 'content.dart';


class OnboaedingView extends StatefulWidget {
  @override
  _OnboaedingViewState createState() => _OnboaedingViewState();
}

class _OnboaedingViewState extends State<OnboaedingView> {
  int currentIndex=0;
   late PageController _controller;

  @override
  void initState(){
    _controller = PageController( initialPage: 0 );
    super.initState();
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: 4,
              onPageChanged:(int index) {
                setState(() {
                  currentIndex = index;
                });
              } ,
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: [
                      Image.asset(
                        contents[i].image, // Replace with your actual logo image file path
                        height: 300, // Adjust the height as needed
                      ),
                      SizedBox(height: 20,),

                      Text(
                        contents[i].title,
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text(
                        contents[i].discription,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18 , color: Colors.grey),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          Container(
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                    (index) => buildDot(index , context),
              ),
            ),
          ),




          Container(
              height: 60,
              margin: EdgeInsets.all(40),
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  if (currentIndex == 4 - 1) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => Signup()),
                    );
                  }
                  _controller.nextPage(duration: Duration(milliseconds: 100), curve: Curves.bounceIn);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromRGBO(15, 9, 102, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  currentIndex == 4 - 1 ? "Continue" : "Next",
                  style: TextStyle(color: Colors.white),
                ),)
          )
        ],
      ),
    );
  }

  Container buildDot (int index , BuildContext context){
    return Container(
      height: 10,
      width: currentIndex == index ? 25:10 ,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:  Color.fromRGBO(15, 9, 102, 1),

      ),
    );
  }
}


