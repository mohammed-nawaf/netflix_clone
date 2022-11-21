import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors.dart';
import 'package:netflix_clone/presentation/downloads/downloads_screen.dart';
import 'package:netflix_clone/presentation/fast_laughs/fast_laughs_screen.dart';
import 'package:netflix_clone/presentation/home/home_screen.dart';
import 'package:netflix_clone/presentation/main_page/widgets/bottom_navbar.dart';
import 'package:netflix_clone/presentation/new_and_hot/new_and_hot_screen.dart';
import 'package:netflix_clone/presentation/search/search_screen.dart';

class MainPage extends StatelessWidget {
   MainPage({super.key});

  final _pages =  [
    const HomeScreen(),
    const NewAndHotScreen(),
    const FastLaughsScreen(),
    const SearchScreen(),
    DowloadsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, child) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
