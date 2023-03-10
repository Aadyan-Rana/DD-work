import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      // color: Color(0xff2e2e2e),
      // color: Colors.white,
      color: Color(0xff000000),

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                height: 50,
                width: 50,
                child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  icon: Icon(
                    Icons.home,
                    size: 48,
                    color: Color(0xffffffff),
                    // color: Colors.orange[700]
                  ),
                )),

            Container(
              height: 50,
              width: 50,
              child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/style');
                  },
                  icon: Icon(
                    Icons.emoji_food_beverage,
                    size: 48,
                    color: Color(0xffffffff),
                  )),
            ),
            Container(
              height: 50,
              width: 50,
              child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/fact');
                  },
                  icon: Icon(
                    Icons.fact_check_sharp,
                    size: 48,
                    color: Color(0xffffffff),
                  )),
            ),
            Container(
              height: 50,
              width: 50,
              child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/video');
                  },
                  icon: Icon(
                    Icons.video_call,
                    size: 48,
                    color: Color(0xffffffff),
                  )),
            ),
            Container(
              height: 50,
              width: 50,
              child: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/contact');
                  },
                  icon: Icon(
                    Icons.call,
                    size: 48,
                    color: Color(0xffffffff),
                  )),
            ),

            // Container(
            //   height: 50,
            //   width: 50,
            //   child: IconButton(
            //       onPressed: () {
            //         Navigator.pushNamed(context, '/about');
            //       },
            //       icon: Icon(
            //         Icons.info,
            //         size: 48,
            //         color: Color(0xff2e2e2e),
            //       )),
            // ),
          ],
        ),
      ),
    );
  }
}
