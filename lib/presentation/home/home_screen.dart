import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone/core/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/home/widgets/home_background_widget.dart';
import 'package:netflix_clone/presentation/home/widgets/number_title_card.dart';
import 'package:netflix_clone/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (context, value, child) {
        return NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;
            if (direction == ScrollDirection.reverse) {
              scrollNotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              scrollNotifier.value = true;
            }
            return true;
          },
          child: Stack(
            children: [
              ListView(
                children: [
                  Column(
                    children: const [
                      HomeBackgroundWidget(),
                      kheight10,
                      MainTitleCard(title: "Released in the past year"),
                      MainTitleCard(title: "Trending Now"),
                      NumberTitleCard(),
                      MainTitleCard(title: "Tense Dramas"),
                      MainTitleCard(title: "South Indian Cinema"),
                    ],
                  ),
                ],
              ),
              scrollNotifier.value == true
                  ? AnimatedContainer(
                      duration: const Duration(seconds: 5),
                      width: double.infinity,
                      height: 90,
                      color: kColorBlack.withOpacity(.5),
                      child: Column(children: [
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Image(
                                image: AssetImage(
                                  "assets/images/netflix_logo.png",
                                ),
                                fit: BoxFit.cover,
                                width: 50,
                                height: 40,
                              ),
                            ),
                            const Spacer(),
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
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Text(
                                "TV Shows",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Movies",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Categories",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    )
                  : const SizedBox(),
            ],
          ),
        );
      },
    ));
  }
}
