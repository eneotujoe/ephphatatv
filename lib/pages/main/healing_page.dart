import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class HealingPage extends StatefulWidget {
  const HealingPage({Key? key}) : super(key: key);

  @override
  _HealingPageState createState() => _HealingPageState();
}

class _HealingPageState extends State<HealingPage> {
  final List<YoutubePlayerController> _controllers = [
    '3aFGGhTjrYc',
    'tEICTbUizYE',
    'm_co5JQ-lXM',
    'eU0AHvbpav8',
    'fyw68GyiHRI',
    'Sthw8soqtsI',
    'LpDPXBrpY2c',
    'A938vmH7TM0',
    'MQSwltgf3ac',
    'EwLgMZAOehM',
    '3aFGGhTjrYc',
    'W12v_LLkM_U',
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
        title: const Text('Healings'),
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