import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors.dart';
import 'package:netflix_clone/core/constants.dart';

class NumberCard extends StatelessWidget {
  final int index;
  const NumberCard({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: size.width * 0.1,
              height: size.width * 0.5,
            ),
            Container(
              width: size.width * 0.35,
              height: size.width * 0.5,
              decoration: BoxDecoration(
                borderRadius: kBorderRadius8,
                image: const DecorationImage(
                    image: NetworkImage(
                        "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/tDynwDj3pvexrEQ8wb0uy8EdcGQ.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
          ],
        ),
        Positioned(
          left: 10,
          bottom: 10,
          child: BorderedText(
            strokeWidth: 4,
            strokeColor: kColorWhite,
            child: Text(
              '${index + 1}',
              style: const TextStyle(
                fontSize: 120,
                fontWeight: FontWeight.bold,
                color: kColorBlack,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        )
      ],
    );
  }
}
