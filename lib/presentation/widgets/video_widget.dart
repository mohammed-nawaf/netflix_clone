import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors.dart';
import 'package:netflix_clone/core/constants.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: SizedBox(
            width: double.infinity,
            height: 200,
            child: Image.network(
              kNewAndHotTempImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          right: 8,
          bottom: 8,
          child: CircleAvatar(
            radius: 18,
            backgroundColor: Colors.black.withOpacity(0.4),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.volume_off,
                size: 20,
              ),
              color: kColorWhite,
            ),
          ),
        ),
      ],
    );
  }
}