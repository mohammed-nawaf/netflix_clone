import 'package:flutter/material.dart';

import 'package:netflix_clone/core/colors.dart';
import 'package:netflix_clone/core/constants.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black.withOpacity(0.4),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.volume_off,
                      size: 30,
                    ),
                    color: kColorWhite,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    CircleAvatar(
                      backgroundColor: kColorBlack,
                      radius: 25,
                    ),
                    kheight10,
                    VideoActionWidget(icon: Icons.emoji_emotions, text: 'LOL'),
                    VideoActionWidget(icon: Icons.add, text: 'My List'),
                    VideoActionWidget(icon: Icons.share, text: 'Share'),
                    VideoActionWidget(icon: Icons.play_arrow, text: 'Play'),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  const VideoActionWidget({required this.icon, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          Icon(

            icon,
            size: 30,
            color: kColorWhite,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
          
        ],
      ),
    );
  }
}
