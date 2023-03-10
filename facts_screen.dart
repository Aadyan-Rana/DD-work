import 'package:untitled/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class Data extends StatelessWidget {
  const Data({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xfffdf2e9),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisSize: MainAxisSize.max,
          children: [
            Column(children: [
              Container(
                height: 100,
                width: double.infinity,
                // color: Color(0xff2e2e2e),
                color: Colors.orange[400],

                child: Center(
                    child: Text(
                  'KINDS OF MEDITATION STYLES',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // mainAxisSize: MainAxisSize.max,
                children: [
                  FactsCard(
                      content: 'Pots',
                      link:
                          'https://www.healthline.com/health/mental-health/types-of-meditation#mindfulness-meditation'),
                  FactsCard(
                      content:
                          'Spiritual meditation',
                      link: 'https://www.healthline.com/health/mental-health/types-of-meditation#mindfulness-meditation'),
                  FactsCard(
                      content: 'Focused meditation',
                      link: 'https://www.healthline.com/health/mental-health/types-of-meditation#mindfulness-meditation'),
                  FactsCard(
                      content: 'Movement meditation',
                      link:
                          'https://www.healthline.com/health/mental-health/types-of-meditation#mindfulness-meditation'),
                  FactsCard(
                      content: 'Mantra meditation',
                      link:
                          'https://www.healthline.com/health/mental-health/types-of-meditation#mindfulness-meditation'),
                  FactsCard(
                      content: 'Transcendental meditation',
                      link:
                          'https://www.healthline.com/health/mental-health/types-of-meditation#mindfulness-meditation')


                ],
              ),
            ]),
            NavBar()
          ],
        ),
      ),
    );
  }
}

class FactsCard extends StatelessWidget {
  FactsCard({required this.content, required this.link});
  final String content;
  final String link;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        // color: Color(0xffeb4034),
        color: Colors.lightBlueAccent[400],
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white70, width: 3),  
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(10.0),
        child: Container(
          // color: Color(0xffeb4034),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  content,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: () async {
        if (await canLaunch(link)) {
          await launch(
            link,
            forceWebView: true,
          );
        } else {
          throw 'Could not launch $link';
        }
      },
    );
  }
}
