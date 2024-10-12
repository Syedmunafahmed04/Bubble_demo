import 'dart:async';

import 'package:bubble_chart/bubble_chart.dart';
import 'package:bubble_demo/Custom_Cont.dart';
import 'package:bubble_demo/Front_Cont.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool isplay = false;
  double opacity_lvl = 0.0;
  void increase() {
    setState(() {
      isplay = true;
      opacity_lvl = 1.0;
    });
  }

  List<Color> Container_Colors_List = [
    Colors.blue.shade800,
    Colors.grey.shade500,
  ];
  List<Color> Container_Colors_List2 = [
    Colors.white,
    Colors.grey,
  ];
  List<Color> Container_Colors_List3 = [
    Colors.black,
    Colors.grey.shade500,
  ];

  @override
  void initState() {
    Timer.periodic(Duration(milliseconds: 500), (timer) {
      if (timer.tick == 2) {
        timer.cancel();
        increase();
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double Screen_Width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade400,
        centerTitle: true,
        title: Text('Home Screen'),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/Neo.jpg',
                ),
                fit: BoxFit.cover)),
        child: Stack(
          children: [
            // LAST CONTAINER
            Custom_Float_Container(
              positioned_dur: Duration(milliseconds: 800),
              positioned_curve: Curves.easeInOut,
              positioned_height:
                  isplay ? Screen_Width / 2.8 : Screen_Width / 2.8,
              positioned_top: isplay ? Screen_Width / 1.7 : Screen_Width / .5,
              positioned_right:
                  isplay ? Screen_Width * .40 : Screen_Width * .40,
              positioned_width:
                  isplay ? Screen_Width / 2.4 : Screen_Width / 2.4,
              opacity_level: opacity_lvl,
              opacity_dur: Duration(milliseconds: 1100),
              Cont_height: 100,
              Cont_width: 100,
              Cont_color: Container_Colors_List3,
              Cont_child: Text(''),
              opacity_curve: Curves.easeIn,
            ),

            // MIDDLE CONTAINER
            Custom_Float_Container(
              positioned_dur: Duration(milliseconds: 900),
              positioned_curve: Curves.easeInOut,
              positioned_height:
                  isplay ? Screen_Width / 2.5 : Screen_Width / 2.5,
              positioned_top: isplay ? Screen_Width / 1.5 : Screen_Width / .5,
              positioned_right:
                  isplay ? Screen_Width * .25 : Screen_Width * .25,
              positioned_width:
                  isplay ? Screen_Width / 2.1 : Screen_Width / 2.1,
              opacity_level: opacity_lvl,
              opacity_dur: Duration(milliseconds: 1200),
              Cont_height: 100,
              Cont_width: 100,
              Cont_color: Container_Colors_List2,
              Cont_child: Text(''),
              opacity_curve: Curves.easeIn,
            ),
            //FRONT CONTAINER

            Front_Container(
              positioned_dur: Duration(milliseconds: 1000),
              Cont_child: BubbleChartLayout(padding: 30, children: [
                BubbleNode.leaf(
                    value: 3000, options: BubbleOptions(color: Colors.pink)),
                BubbleNode.leaf(
                    value: 1000,
                    options: BubbleOptions(color: Colors.deepPurpleAccent)),
                BubbleNode.leaf(
                    value: 600, options: BubbleOptions(color: Colors.purple)),
                BubbleNode.leaf(
                    value: 100,
                    options: BubbleOptions(color: Colors.purple.shade700)),
                BubbleNode.leaf(
                    value: 300, options: BubbleOptions(color: Colors.blue)),
                BubbleNode.leaf(
                    value: 900,
                    options: BubbleOptions(color: Colors.purple.shade500)),
                BubbleNode.leaf(
                    value: 300, options: BubbleOptions(color: Colors.grey)),
                BubbleNode.leaf(
                    value: 500,
                    options: BubbleOptions(color: Colors.purple.shade900)),
                BubbleNode.leaf(
                    value: 250,
                    options: BubbleOptions(color: Colors.purple.shade700)),
                BubbleNode.leaf(
                    value: 300, options: BubbleOptions(color: Colors.indigo)),
                BubbleNode.leaf(
                    value: 400,
                    options: BubbleOptions(color: Colors.purple.shade700)),
                BubbleNode.leaf(
                    value: 100,
                    options: BubbleOptions(color: Colors.purple.shade700)),
                BubbleNode.leaf(
                    value: 50,
                    options: BubbleOptions(color: Colors.purple.shade700)),
                BubbleNode.leaf(
                    value: 100,
                    options: BubbleOptions(color: Colors.purple.shade700)),
              ]),
              opacity_curve: Curves.easeIn,
              positioned_curve: Curves.easeInOut,
              positioned_height:
                  isplay ? Screen_Width / 2.4 : Screen_Width / 2.4,
              positioned_top: isplay ? Screen_Width / 1.3 : Screen_Width / .5,
              positioned_right:
                  isplay ? Screen_Width * .03 : Screen_Width * .03,
              positioned_width:
                  isplay ? Screen_Width / 2.2 : Screen_Width / 2.4,
              opacity_level: opacity_lvl,
              opacity_dur: Duration(milliseconds: 1300),
              Cont_height: 100,
              Cont_width: 100,
              Cont_color: Container_Colors_List,
            ),
          ],
        ),
      ),
    );
  }
}


  // Custom_Float_Container(
            //   positioned_dur: Duration(milliseconds: 1000),
            //   positioned_curve: Curves.easeInOut,
            //   positioned_height:
            //       isplay ? Screen_Width / 2.4 : Screen_Width / 2.4,
            //   positioned_top: isplay ? Screen_Width / 1.3 : Screen_Width / .5,
            //   positioned_right:
            //       isplay ? Screen_Width * .03 : Screen_Width * .03,
            //   positioned_width: isplay ? Screen_Width / 2.0 : Screen_Width / 2,
            //   opacity_level: opacity_lvl,
            //   opacity_dur: Duration(milliseconds: 1300),
            //   Cont_height: 100,
            //   Cont_width: 100,
            //   Cont_color: Container_Colors_List,
            //   Cont_child: BubbleChartLayout(padding: 30, children: [
            //     BubbleNode.leaf(
            //         value: 3000, options: BubbleOptions(color: Colors.pink)),
            //     BubbleNode.leaf(
            //         value: 1000,
            //         options: BubbleOptions(color: Colors.deepPurpleAccent)),
            //     BubbleNode.leaf(
            //         value: 600, options: BubbleOptions(color: Colors.purple)),
            //     BubbleNode.leaf(
            //         value: 100,
            //         options: BubbleOptions(color: Colors.purple.shade700)),
            //     BubbleNode.leaf(
            //         value: 300, options: BubbleOptions(color: Colors.blue)),
            //     BubbleNode.leaf(
            //         value: 900,
            //         options: BubbleOptions(color: Colors.purple.shade500)),
            //     BubbleNode.leaf(
            //         value: 300, options: BubbleOptions(color: Colors.grey)),
            //     BubbleNode.leaf(
            //         value: 500,
            //         options: BubbleOptions(color: Colors.purple.shade900)),
            //     BubbleNode.leaf(
            //         value: 250,
            //         options: BubbleOptions(color: Colors.purple.shade700)),
            //     BubbleNode.leaf(
            //         value: 300, options: BubbleOptions(color: Colors.indigo)),
            //     BubbleNode.leaf(
            //         value: 400,
            //         options: BubbleOptions(color: Colors.purple.shade700)),
            //     BubbleNode.leaf(
            //         value: 100,
            //         options: BubbleOptions(color: Colors.purple.shade700)),
            //     BubbleNode.leaf(
            //         value: 50,
            //         options: BubbleOptions(color: Colors.purple.shade700)),
            //     BubbleNode.leaf(
            //         value: 100,
            //         options: BubbleOptions(color: Colors.purple.shade700)),
            //   ]),
            //   opacity_curve: Curves.easeIn,
            // ),