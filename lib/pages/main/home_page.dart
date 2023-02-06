import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

final List<String> images = [
  'assets/images/img-1.png',
  'assets/images/img-3.jpeg',
  'assets/images/img-4.jpeg',
  'assets/images/img-5.jpeg',
  ];

// final videoId = YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=BBAyRBTfsOU");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                height: 250,
              ),
              items: images
                .map((item) => Center(
                  child:
                    Image.asset(item, fit: BoxFit.cover, width: 1000)))
                .toList(),
            ),
          ),
            // child: Image.asset('assets/images/img-2.png'),
          
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Center(child: Text('Livestreaming', style: TextStyle(color: Color(0xFFD2A70F), fontSize: 20),)),
          ),

          YoutubePlayer(
            liveUIColor: const Color(0xFFD2A70F),
            controller: YoutubePlayerController(
              initialVideoId: 'axXjGWLJNMo',
              // initialVideoId: videoId,
              // channelId: 'YOUTUBE_CHANNEL_ID',
              flags: const YoutubePlayerFlags(
                isLive: true,
                autoPlay: false
              ),
            ),
          ),
          
        ],
      )
    );
  }
}