import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/widgets/main_card.dart';
import 'package:netflix_clone/presentation/widgets/title.dart';

const _imageUrl =
    "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/34m2tygAYBGqA9MXKhRDtzYd4MR.jpg";

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText(title: 'Movie & TV'),
        kheight20,
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1.5 / 2,
            crossAxisCount: 3,
            children: List.generate(21, (index) {
              return const MainCard(
                imageUrl: _imageUrl,
              );
            }),
          ),
        ),
      ],
    );
  }
}
