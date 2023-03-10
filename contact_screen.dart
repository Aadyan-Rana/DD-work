import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'nav_bar.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff97c6ea),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 100,
              width: double.infinity,
              // color: Color(0xff2e2e2e),
              color: Colors.orange[400],
              child: Center(
                  child: Text(
                'Contact Us',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )),
            ),
            ContactCard(
              thing: 'Instagram',
              detail: 'meditate@instagram.com',
              icon: Icon(
                FontAwesomeIcons.instagram,
                size: 50,
              ),
            ),
            ContactCard(
              thing: 'Facebook',
              detail: 'meditate@facebook.com',
              icon: Icon(
                FontAwesomeIcons.facebook,
                size: 50,
              ),
            ),
            ContactCard(
              thing: 'Call Us at',
              detail: '0123456789',
              icon: Icon(
                FontAwesomeIcons.phone,
                size: 50,
              ),
            ),
            ContactCard(
              thing: 'Email',
              detail: 'meditate@gmail.com',
              icon: Icon(
                Icons.email,
                size: 50,
              ),
            ),
            ContactCard(
              thing: 'Address',
              detail: '999 , Wellington , India',
              icon: Icon(
                FontAwesomeIcons.mapMarked,
                size: 50,
              ),
            ),
            NavBar()
          ],
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  ContactCard({required this.thing, required this.detail, required this.icon});
  final String thing;
  final String detail;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(20, 6, 20, 0),
      child: ListTile(
        leading: icon,
        title: Text(detail),
        subtitle: Text(thing),
      ),
    );
  }
}
