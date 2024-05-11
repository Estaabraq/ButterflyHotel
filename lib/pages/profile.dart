import 'package:flutter/material.dart';

import 'login.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
              title: Text('Profile'),
              backgroundColor:Color.fromARGB(255, 15, 9, 102),
              leading: new Container(
                padding: new EdgeInsets.all(8.0),
                width: 10.0,
                height: 10.0,
                decoration: new BoxDecoration(
                  color: const Color(0xff7c94b6),
                  borderRadius: new BorderRadius.all(new Radius.circular(50.0)),
                  border: new Border.all(
                    color: Colors.white,
                    width: 1.0,
                  ),
                ),
              )

          ),

          body: Column
            (

            children: [
              ListTile(
                leading: Icon(Icons.person_outline),
                title: Text("mange your account"),
              ),
              ListTile(
                leading: Icon(Icons.shopping_bag_outlined),
                title: Text("Rewards & wallet"),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("setting"),
              ),
              ListTile(
                leading: Icon(Icons.payment),
                title: Text("payment"),
              ),

              ListTile(
                leading: Icon(Icons.room_service),
                title: Text("room service"),
              ),
              Container(

                child: ListTile(
                  onTap: ()
                  { Navigator.of(context)
                      .push(MaterialPageRoute(builder: ((context) => Login())));},
                  leading: Icon(Icons.logout),
                  title: Text("login"),

                ),
              ),
            ],
          )

    );
  }
}