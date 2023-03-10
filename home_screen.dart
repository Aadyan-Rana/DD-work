import 'package:flutter/material.dart';

import 'nav_bar.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff000000),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Container(
              width: 400,
              height: 400,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/med.jpg'),
                    fit: BoxFit.contain),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xffe55922),
                onPrimary: Colors.white,
                shadowColor: Colors.greenAccent,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                minimumSize: Size(200, 60),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/style');
              },
              child: Text(
                '',

                // style: TextStyle(fontSize: 20),
              ),
            ),
            NavBar()
          ],
        ),
      ),
    );
  }
}
