import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/widgets/title.dart';

const imageUrl =
    "https://www.themoviedb.org/t/p/w250_and_h141_face/84XPpjGvxNyExjSuLQe0SzioErt.jpg";

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleText( title: 'Top Searches'),
        kheight20,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return const SearchIdleItemTile();
            },
            separatorBuilder: (context, index) {
              return kheight20;
            },
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}

class SearchIdleItemTile extends StatelessWidget {
  const SearchIdleItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 75,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imageUrl),
            ),
          ),
        ),
        kwidth10,
        const Expanded(
            child: Text(
          'Movie Name',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        )),
        const Icon(
          Icons.play_circle_outlined,
          color: Colors.white,
          size: 50,
        ),
      ],
    );
  }
}
