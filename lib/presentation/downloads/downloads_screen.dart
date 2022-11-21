import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/presentation/widgets/appbar_widget.dart';

class DowloadsScreen extends StatelessWidget {
  DowloadsScreen({super.key});

  final _widgetList = [
    const SmartDownloads(),
    Section1(),
    const Section2(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: 'Downloads',
          )),
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return _widgetList[index];
        },
        separatorBuilder: (context, index) {
          return kheight20;
        },
        itemCount: _widgetList.length,
      ),
    );
  }
}

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            width: double.infinity,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              onPressed: () {},
              color: kButtonColorBlue,
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Set up',
                  style: TextStyle(
                      color: kColorWhite,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        kheight10,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            onPressed: () {},
            color: kButtonColorWhite,
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'See what you can download',
                style: TextStyle(
                    color: kColorBlack,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Section1 extends StatelessWidget {
  Section1({super.key});

  final List imageList = [
    "https://www.themoviedb.org/t/p/w440_and_h660_face/3zXceNTtyj5FLjwQXuPvLYK5YYL.jpg",
    "https://www.themoviedb.org/t/p/w440_and_h660_face/fECBtHlr0RB3foNHDiCBXeg9Bv9.jpg",
    "https://www.themoviedb.org/t/p/w440_and_h660_face/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        kheight20,
        const Text(
          'Introducing Downloads for you',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        kheight10,
        const Text(
          "We will download a personalised selection of\nmovies and shows for you, so there's\nalways something to watch on your\ndevice",
          style: TextStyle(
            color: kColorGrey,
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                backgroundColor: kColorGrey.withOpacity(0.5),
                radius: size.width * 0.4,
              ),
              DownloadsImagewidget(
                width: size.width * 0.4,
                height: size.width * 0.55,
                margin: const EdgeInsets.only(left: 170),
                imageUrl: imageList[0],
                angle: 15,
              ),
              DownloadsImagewidget(
                width: size.width * 0.4,
                height: size.width * 0.55,
                margin: const EdgeInsets.only(right: 170),
                imageUrl: imageList[1],
                angle: -15,
              ),
              DownloadsImagewidget(
                width: size.width * 0.4,
                height: size.width * 0.6,
                margin: const EdgeInsets.only(top: 0),
                imageUrl: imageList[2],
                angle: 0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SmartDownloads extends StatelessWidget {
  const SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        kwidth10,
        Icon(
          Icons.settings,
          color: kColorWhite,
        ),
        kwidth10,
        Text(
          'Smart Downloads',
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}

class DownloadsImagewidget extends StatelessWidget {
  const DownloadsImagewidget({
    Key? key,
    required this.imageUrl,
    this.angle = 0,
    required this.margin,
    required this.height,
    required this.width,
  }) : super(key: key);

  final String imageUrl;
  final double angle;
  final EdgeInsets margin;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: kColorBlack,
            image: DecorationImage(
                fit: BoxFit.fitHeight, image: NetworkImage(imageUrl))),
      ),
    );
  }
}
