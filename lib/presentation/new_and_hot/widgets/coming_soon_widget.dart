import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/widgets/custom_icon%20widget.dart';
import 'package:netflix_clone/presentation/widgets/video_widget.dart';


class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "FEB",
                style: TextStyle(fontSize: 16, color: kColorGrey),
              ),
              Text(
                "11",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VideoWidget(),
              kheight20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Orphan: First Kill",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -3,
                    ),
                  ),
                  Row(
                    children: const [
                      CustomIconWidget(
                        icon: Icons.notifications_none_rounded,
                        text: "Remind Me",
                        iconSize: 20,
                        fontSize: 11,
                      ),
                      CustomIconWidget(
                        icon: Icons.info_outline,
                        text: "Info",
                        iconSize: 20,
                        fontSize: 11,
                      ),
                      kwidth20
                    ],
                  ),
                ],
              ),
              kheight10,
              const Text(
                "Coming on Friday",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              kheight10,
              const Text(
                "Orphan: First Kill",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              kheight10,
              const Text(
                "Landing the lead in the school musical is a\ndream come true for Jodi, until the pressure\nsends her confidence - and her relationship -\ninto a tailspin.",
                style: TextStyle(color: kColorGrey),
              ),
            ],
          ),
        )
      ],
    );
  }
}

