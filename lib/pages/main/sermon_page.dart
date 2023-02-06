import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class SermonPage extends StatefulWidget {
  const SermonPage({Key? key}) : super(key: key);

  @override
  _SermonPageState createState() => _SermonPageState();
}

class _SermonPageState extends State<SermonPage> {
  final List<YoutubePlayerController> _controllers = [
    'A3-Px9rP28c',
    'bnM6hVnbLNw',
    'RT49sWEWnpA',
    '0uYN8jeuhFQ',
    'aQFgHkTH9mY',
    'Wqd9E1FsB0g',
    'c7hBZn6daWo',
    'ks4kpZ3XbRY',
    'qmPdCB6McFE',
    'EVzUtPHvmzE',
    'L_QsyKAEauY',
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
        title: const Text('Sermons And Devotionals'),
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