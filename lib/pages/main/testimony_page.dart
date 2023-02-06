// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';


// class TestimonyPage extends StatefulWidget {
//   const TestimonyPage({Key? key}) : super(key: key);

//   @override
//   _TestimonyPageState createState() => _TestimonyPageState();
// }

// class _TestimonyPageState extends State<TestimonyPage> {
//   late YoutubePlayerController _controller;
//   late TextEditingController _idController;
//   late TextEditingController _seekToController;

//   late PlayerState _playerState;
//   late YoutubeMetaData _videoMetaData;
//   bool _isPlayerReady = false;

//   final List<String> _ids = [
//     'wm9F86PWKqM',
//     'diZxWTJi_bk',
//   ];

//   @override
//   void initState() {
//     super.initState();
//     _controller = YoutubePlayerController(
//       initialVideoId: _ids.first,
//       flags: const YoutubePlayerFlags(
//         mute: false,
//         autoPlay: false,
//         disableDragSeek: false,
//         loop: false,
//         isLive: false,
//         forceHD: false,
//         enableCaption: true,
//       ),
//     )..addListener(listener);
//     _idController = TextEditingController();
//     _seekToController = TextEditingController();
//     _videoMetaData = const YoutubeMetaData();
//     _playerState = PlayerState.unknown;
//   }

//   void listener() {
//     if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
//       setState(() {
//         _playerState = _controller.value.playerState;
//         _videoMetaData = _controller.metadata;
//       });
//     }
//   }

//   @override
//   void deactivate() {
//     // Pauses video while navigating to next page.
//     _controller.pause();
//     super.deactivate();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     _idController.dispose();
//     _seekToController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return YoutubePlayerBuilder(
//       onExitFullScreen: () {
//         SystemChrome.setPreferredOrientations(DeviceOrientation.values);
//       },
//       player: YoutubePlayer(
//         controller: _controller,
//         showVideoProgressIndicator: true,
//         progressIndicatorColor: Colors.blueAccent,
//         topActions: <Widget>[
//           const SizedBox(width: 8.0),
//           Expanded(
//             child: Text(
//               _controller.metadata.title,
//               style: const TextStyle(
//                 color: Colors.white,
//                 fontSize: 12.0,
//               ),
//               overflow: TextOverflow.ellipsis,
//               maxLines: 1,
//             ),
//           ),
//           IconButton(
//             icon: const Icon(
//               Icons.settings,
//               color: Colors.white,
//               size: 25.0,
//             ),
//             onPressed: () {},
//           ),
//         ],
//         onReady: () {
//           _isPlayerReady = true;
//         },
//         onEnded: (data) {
//           _controller
//               .load(_ids[(_ids.indexOf(data.videoId) + 1) % _ids.length]);
//         },
//       ),

//       builder: (context, player) => Scaffold(
//         appBar: AppBar(
//           title: const Text('Testimony'),
//         ),
//         body: ListView(
//           children: [ player, ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class TestimonyPage extends StatefulWidget {
  const TestimonyPage({Key? key}) : super(key: key);

  @override
  _TestimonyPageState createState() => _TestimonyPageState();
}

class _TestimonyPageState extends State<TestimonyPage> {
  final List<YoutubePlayerController> _controllers = [
    'LJma68J38PQ',
    'BqqcvSfnVhk',
    'giHQG5qoDfA',
    'V5f04g4GEpQ',
    'vMH3WXm5Y94',
    'wgIVUQdTgkg',
    'WpcYoh2E9Y8',
    'Ghe9ZN0pfVc',
    'qNrc3R3pBkE',
    'jlTZMUnySPA',
  ]
  .map<YoutubePlayerController>(
    (videoId) => YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    ),
  )
  .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Testimonies'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return YoutubePlayer(
              key: ObjectKey(_controllers[index]),
              controller: _controllers[index],
              actionsPadding: const EdgeInsets.only(left: 16.0),
              bottomActions: [
                CurrentPosition(),
                const SizedBox(width: 10.0),
                ProgressBar(isExpanded: true),
                const SizedBox(width: 10.0),
                RemainingDuration(),
                FullScreenButton(),
              ],
            );
          },
          itemCount: _controllers.length,
          separatorBuilder: (context, _) => const SizedBox(height: 10.0),
        ),
      ),
    );
  }
}