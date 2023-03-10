import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/material.dart';

import 'nav_bar.dart';

class Video extends StatefulWidget {
  const Video({
    Key? key,
  }) : super(key: key);

  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  late YoutubePlayerController _controller1;
  late YoutubePlayerController _controller2;
  late YoutubePlayerController _controller3;
  late YoutubePlayerController _controller4;

  @override
  void initState() {
    _controller1 = YoutubePlayerController(
        initialVideoId: 'U9YKY7fdwyg',
        flags: const YoutubePlayerFlags(
          mute: false,
          autoPlay: true,
          disableDragSeek: false,
          loop: false,
          isLive: false,
          forceHD: false,
          enableCaption: true,
        ));
    _controller2 = YoutubePlayerController(
        initialVideoId: 'O-6f5wQXSu8',
        flags: const YoutubePlayerFlags(
          mute: false,
          autoPlay: true,
          disableDragSeek: false,
          loop: false,
          isLive: false,
          forceHD: false,
          enableCaption: true,
        ));
    _controller3 = YoutubePlayerController(
        initialVideoId: 'vEA2puiERK0',
        flags: const YoutubePlayerFlags(
          mute: false,
          autoPlay: true,
          disableDragSeek: false,
          loop: false,
          isLive: false,
          forceHD: false,
          enableCaption: true,
        ));
    _controller4 = YoutubePlayerController(
        initialVideoId: 'vEA2puiERK0',
        flags: const YoutubePlayerFlags(
          mute: false,
          autoPlay: true,
          disableDragSeek: false,
          loop: false,
          isLive: false,
          forceHD: false,
          enableCaption: true,
        ));

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    // _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color(0xfffdf2e9),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          height: 100,
          width: double.infinity,
          // color: Color(0xff2e2e2e),
          color: Colors.orange[400],

          child: Center(
              child: Text(
            'Gallery',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          )),
        ),
        Expanded(
            child: ListView(
          children: [
            Container(
              height: 200,
              width: 200,
              child: YoutubePlayer(
                controller: _controller1,
              ),
            ),
            SizedBox(height: 50, width: double.infinity),
            Container(
              height: 200,
              width: 200,
              color: Colors.lightBlue,
              child: YoutubePlayer(
                controller: _controller2,
              ),
            ),
            SizedBox(height: 50, width: double.infinity),
            Container(
              height: 200,
              width: 200,
              color: Colors.lightBlue,
              child: YoutubePlayer(
                controller: _controller3,
              ),
            ),
            SizedBox(height: 50, width: double.infinity),
            Container(
              height: 200,
              width: 200,
              color: Colors.lightBlue,
              child: YoutubePlayer(
                controller: _controller4,
              ),
            ),
          ],
        )),
        NavBar()
      ]),
    ));
  }
}
