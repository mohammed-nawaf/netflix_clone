
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/search/widgets/search_result.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                style: const TextStyle(color: kColorWhite),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.grey.withOpacity(0.3),
                  hintText: 'Search',
                  hintStyle: const TextStyle(color: kColorGrey, fontSize: 17),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: kColorGrey,
                  ),
                  suffixIcon: const Icon(
                    Icons.cancel,
                    color: kColorGrey,
                  ),
                ),
              ),
              kheight20,
              // const Expanded(child: SearchIdleWidget()),
              const Expanded(child: SearchResultWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
