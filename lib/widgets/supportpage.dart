import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:todo_app/banners/banner1.dart';
import 'package:todo_app/banners/banner2.dart';
import 'package:todo_app/banners/banner3.dart';


void main () {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SupportPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class SupportPage extends StatefulWidget {
  const SupportPage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<SupportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: CarouselSlider(
        slideTransform: const CubeTransform(),
        slideIndicator: CircularSlideIndicator(
          padding: const EdgeInsets.only(bottom: 50),
          currentIndicatorColor: Colors.black,
        ),
        children: const [
          Banner1(),
          Banner2(),
          Banner3(),
        ],
      ),
    );
  }
}








