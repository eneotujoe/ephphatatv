import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class DeliverancePage extends StatefulWidget {
  const DeliverancePage({Key? key}) : super(key: key);

  @override
  _DeliverancePageState createState() => _DeliverancePageState();
}

class _DeliverancePageState extends State<DeliverancePage> {
  final List<YoutubePlayerController> _controllers = [
    'KpQwZReQ0T4',
    'SocQls4LBPM',
    'E7lEjsrkiBo',
    '5kI-GJnC5O4',
    'AmUWKwA8SPw',
    '79GJbtyhBfQ',
    'WCaVutpPlCI',
    'diZxWTJi_bk',
    'V0hvw-yfvO0',
    'nlhTb39R0mE',
    'n0PBbLBW6eM',
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
        title: const Text('Deliverances And Healings'),
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