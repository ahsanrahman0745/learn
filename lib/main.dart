import 'package:flutter/material.dart';

void main() {
  runApp(MyWelcomeScreen());
}

class MyWelcomeScreen extends StatefulWidget {
  @override
  State<MyWelcomeScreen> createState() => _MyWelcomeScreenState();
}

class _MyWelcomeScreenState extends State<MyWelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          floatingActionButton: FloatingActionButton.small(
            onPressed: () {},
            child: Icon(
              Icons.plus_one,
              color: Colors.white,
            ),
          ),
          appBar: AppBar(
            automaticallyImplyLeading: true,
            title: Text(
              "Page Title",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            actions: [
              Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              Icon(
                Icons.search,
                color: Colors.white,
              ),
              Icon(
                Icons.messenger_sharp,
                color: Colors.white,
              ),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                    child: Column(
                  children: [
                    Image.asset(
                      "assets/background/background.png",
                      width: double.infinity,
                      height: 80,
                    ),
                    Text(
                      "User Name",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Email",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )),
                ListTile(
                  tileColor: Colors.lightBlue,
                  leading: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  title: Text(
                    "My Account",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(
                    Icons.arrow_right_alt,
                    color: Colors.white,
                  ),
                ),
                ListTile(
                  tileColor: Colors.lightBlue,
                  leading: Icon(
                    Icons.key,
                    color: Colors.white,
                  ),
                  title: Text(
                    "change Passwrod",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(
                    Icons.arrow_right_alt,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25))
                    ),
                    height: 300,
                    width: 300,
                  
                  ),
                  Container(
                    height: 300,
                    width: 300,
                    color: Colors.grey,
                  ),
                  Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        shape: BoxShape.circle,
                        // borderRadius: BorderRadius.only(bottomRight: Radius.circular(25),bottomLeft: Radius.circular(25))
                    ),
                  )

                ],
              ),
            ),
          )),
    );
  }
}
