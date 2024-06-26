import 'package:flutter/material.dart';
import 'package:vote_ready/components/asset_video_player.dart';
import '../widgets/custom_button.dart';

class Level04 extends StatefulWidget {
  const Level04({Key? key});

  @override
  State<Level04> createState() => _Level04State();
}

class _Level04State extends State<Level04> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: AssetVideoPlayer(
              asset: 'assets/videos/scenario_4_final.mp4',
              question: 'Where to place the VVPAT in the booth?',
              crt_ans: 'To the left side of the first ballot unit',
              option2: 'To the right side of the first ballot unit',
              option3: 'Near the presiding officer',
              option1: 'To the left side of the first ballot unit',
              reason: 'Placement of VVPAT in Polling Booth',
              details: 'The VVPAT should be positioned to the left side of the first ballot unit, '
                  'ensuring visibility and accessibility for voters while maintaining the integrity '
                  'and transparency of the voting process, in accordance with electoral guidelines',
              level: 4,
            ),
          ),
          CustomFAB(), // Add your custom FAB here
        ],
      ),
    );
  }
}
