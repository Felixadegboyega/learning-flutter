import 'package:flutter/material.dart';
import 'package:myapp/contact_tile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            title: Text(
              'Felix Portfolio',
              style: TextStyle(fontSize: 24),
            )),
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 100, horizontal: 20),
              color: Colors.blueGrey,
              child: Text(
                "I'm Felix Oluwaferanmi, a Flutter based application developer",
                style: TextStyle(fontSize: 40, color: Colors.white),
              ),
            ),
            Container(
                width: double.infinity,
                margin: EdgeInsets.all(20),
                child: Text(
                  "About Me",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                )
            ),
            Container(
                padding: EdgeInsets.only(left: 20),
                alignment: Alignment(-1, -1),
                child: ClipOval(
                  child: Image.asset(
                    "assets/profile-2.jpg",
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                )),
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(20),
              child: Text(
                "I am FELIX OLUWAFERANMI ADEGBOYEGA, a Mobile Application Developer, a Web Developer and a UI/UX Designer. I have skill in developing with HTML, CSS, PHP, MYSQL, EXPRESS JS and JAVACRIPT and its Frameworks / libraries like ANGULAR, REACT AND VUE for Web Developing and DART/Flutter for Mobile Applications.",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ),
            Container(
                width: double.infinity,
                margin: EdgeInsets.all(20),
                child: Text(
                  "Contact Me",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                )),
            ContactTile(
              icon: Icons.email_outlined,
              name: 'Email',
              value:'felixadegboyega2019@gmail.com'
            ),
            ContactTile(
              icon: Icons.phone,
              name: 'Phone',
              value:'+2348035292607, +2349011366347'
            ),
            ContactTile(
              icon: Icons.facebook,
              name: 'Facebook',
              value:'felix.adegboyega.129'
            ),
            ContactTile(
              icon: Icons.location_on_outlined,
              name: 'Address',
              value:'God is Able Villa, Ore-ofe Oluwa Area,'
            ),
          ],
        ),
      ),
    );
  }
}

