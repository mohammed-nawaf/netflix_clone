import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/widgets/main_card.dart';
import 'package:netflix_clone/presentation/widgets/title.dart';

const _imageUrl =
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ruW3malZtlg66ODfg614dFbXO68.jpg";

class MainTitleCard extends StatelessWidget {
  final String title;
  const MainTitleCard({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleText(title: title),
          kheight10,
          LimitedBox(
            maxHeight: size.width * 0.5,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                  10,
                  (index) => const MainCard(
                        imageUrl: _imageUrl,
                      )),
            ),
          ),
          kheight10,
        ],
      ),
    );
  }
}
