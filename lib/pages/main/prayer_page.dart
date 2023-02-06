import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class PrayerPage extends StatefulWidget {
  const PrayerPage({Key? key}) : super(key: key);

  @override
  _PrayerPageState createState() => _PrayerPageState();
}

class _PrayerPageState extends State<PrayerPage> {
  final List<YoutubePlayerController> _controllers = [
    'EZnKdU7kuqA',
    '6_8JmqKB8c8',
    '2F5rUoQbaPs',
    'I2akCG7b9hk',
    'sgnbhVtVzcQ',
    '7YHzrjZe2Rk',
    'zflvjI4xZ5M',
    'pREGhJFLnj0',
    'kNcPc6cxmgU',
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
        title: const Text('Prayers'),
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