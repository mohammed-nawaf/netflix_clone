import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/widgets/custom_icon%20widget.dart';

class HomeBackgroundWidget extends StatelessWidget {
  const HomeBackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(kMainImage), fit: BoxFit.cover),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CustomIconWidget(icon: Icons.add, text: "My List"),
                _playButton(),
                const CustomIconWidget(icon: Icons.info_outline, text: "Info")
              ],
            ),
          ),
        ),
      ],
    );
  }

  TextButton _playButton() {
    return TextButton.icon(
      style: ButtonStyle(
          padding: MaterialStateProperty.all(
              const EdgeInsets.only(left: 10, bottom: 2, top: 2)),
          backgroundColor: MaterialStateProperty.all(kColorWhite)),
      onPressed: () {},
      icon: const Icon(
        Icons.play_arrow,
        color: kColorBlack,
        size: 35,
      ),
      label: const Padding(
        padding: EdgeInsets.only(right: 20),
        child: Text(
          "Play",
          style: TextStyle(fontSize: 20, color: kColorBlack),
        ),
      ),
    );
  }
}


