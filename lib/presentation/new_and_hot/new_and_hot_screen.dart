import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/new_and_hot/widgets/coming_soon_widget.dart';
import 'package:netflix_clone/presentation/new_and_hot/widgets/everyones_watching_widget.dart';


class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: AppBar(
            title: const Text(
              "New & Hot",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
            actions: [
              const Icon(
                Icons.cast,
                color: Colors.white,
                size: 30,
              ),
              kwidth10,
              Container(
                width: 30,
                height: 30,
                color: Colors.blueGrey,
              ),
              kwidth10,
            ],
            bottom: const TabBar(
              isScrollable: true,
              indicatorWeight: 0,
              labelColor: kColorBlack,
              unselectedLabelColor: kColorWhite,
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: kColorWhite),
              tabs: [
                Tab(
                  text: "🍿 Coming Soon",
                ),
                Tab(
                  text: "👀 Everyone's Watching",
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            _buildComingSoon(context),
            _buildEveryonesWatching(),
          ],
        ),
      ),
    );
  }

  _buildComingSoon(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 10),
      itemBuilder: (context, index) => const ComingSoonWidget(),
      itemCount: 10,
    );
  }

  _buildEveryonesWatching() {
    return ListView.builder(
      itemBuilder: (context, index) => const EveryonesWatchingWidget(),
      itemCount: 10,
    );
  }
}


