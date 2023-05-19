import 'dart:math';

import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


   List<MaterialColor> randomColors = Colors.primaries;
   Random random = Random();
   int index = 0;
   void changeIndex() {
     setState(() => index = random.nextInt(3));
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: (){
             changeIndex();
        },
        child: ColoredBox(
          color: randomColors[index],
          child: const Center(
            child: Text(
              "Hello there",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
