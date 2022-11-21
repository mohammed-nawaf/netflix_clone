import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/widgets/custom_icon%20widget.dart';
import 'package:netflix_clone/presentation/widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight10,
        const Text(
          "Orphan: First Kill",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        kheight10,
        const Text(
          "Landing the lead in the school musical is a dream\ncome true for Jodi, until the pressure sends her confidence - and her relationship - into a tailspin.",
          style: TextStyle(color: kColorGrey),
        ),
        kheight50,
        const VideoWidget(),
        kheight10,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomIconWidget(
              icon: Icons.share,
              text: "Share",
              iconSize: 22,
              fontSize: 14,
            ),
            CustomIconWidget(
              icon: Icons.add,
              text: "My List",
              iconSize: 24,
              fontSize: 14,
            ),
            CustomIconWidget(
              icon: Icons.play_arrow,
              text: "Play",
              iconSize: 24,
              fontSize: 14,
            ),
            kwidth10,
          ],
        ),
        kheight10,
      ],
    );
  }
}