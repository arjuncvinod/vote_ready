import 'package:flutter/material.dart';
import 'package:vote_ready/components/asset_video_player.dart';
import '../widgets/custom_button.dart';

class Level03 extends StatefulWidget {
  const Level03({Key? key});

  @override
  State<Level03> createState() => _Level03State();
}

class _Level03State extends State<Level03> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: AssetVideoPlayer(
              asset: 'assets/videos/scenario_3_final.mp4',
              question: 'A voter finds that another person has already casted his vote',
              crt_ans: 'Allow the voter to cast vote in tendered ballot paper',
              option1: 'Allow the voter to cast vote',
              option3: 'Hand over the voter to police',
              option2: 'Allow the voter to cast vote in tendered ballot paper',
              reason: 'Addressing Unauthorized Voting Incidents',
              details: 'As per Rule 49P of the Conduct Of Election Rules,1961, in case a voter discovers that another person has already cast their vote, '
                  'the correct action is to allow the voter to cast their vote using a tendered ballot '
                  'paper, ensuring their voting rights are upheld while maintaining the integrity of the '
                  'electoral process, as per established procedures',
              level: 3,
            ),
          ),
          CustomFAB(), // Add your custom FAB here
        ],
      ),
    );
  }
}
