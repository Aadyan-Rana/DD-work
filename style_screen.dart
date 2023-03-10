import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'nav_bar.dart';

class Meditation extends StatelessWidget {
  const Meditation({
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
              height: 80,
              width: double.infinity,
              // color: Color(E27359FF),
              color: Colors.orange[400],

              child: Center(
                  child: Text(
                'Meditation Styles',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )),
            ),
            Expanded(
              child: ListView(
                children: [
                  CarouselSlider(
                    items: [
                      ReusableImageContainer(
                          AssetImage('assets/pic1.jpeg'),
                          'kyna',
                          'Lie down and meditate.'),
                      ReusableImageContainer(
                          AssetImage('assets/pic2.jpg'),
                          'Meditate and Relax',
                          'Meditation during work'),
                      ReusableImageContainer(
                          AssetImage('assets/pic3.jpg'),
                          'Meditation and Fitness ',
                          'Healthy mind, Healthy body'),

                    ],

                    //Slider Container properties
                    options: CarouselOptions(
                      height: 800,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.8,
                    ),
                  ),
                ],
              ),
            ),
            // Container(
            //   color: Color(0xffeb4034),
            //   child: Text(
            //
            //     style: TextStyle(
            //         fontSize: 20,
            //         fontWeight: FontWeight.bold,
            //         fontStyle: FontStyle.italic,
            //         color: Colors.white70
            //         // backgroundColor: Color(0xffeb4034),
            //         ),
            //     textAlign: TextAlign.center,
            //   ),
            // ),
            NavBar()
          ],
        ),
      ),
    );
  }
}

class ReusableImageContainer extends StatelessWidget {
  ReusableImageContainer(this.image, this.pose, this.description);
  final AssetImage image;
  final String pose;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          width: double.infinity,
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          pose,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Center(
          child: Text(
            description,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 20,
            ),
          ),
        )
      ],
    );
  }
}
