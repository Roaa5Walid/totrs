import 'package:flutter/material.dart';
import 'package:carousel_images/carousel_images.dart';
class Tt extends StatefulWidget {
  const Tt({Key? key}) : super(key: key);

  @override
  State<Tt> createState() => _TtState();

}

class _TtState extends State<Tt> {
  final List<String> listImages = [
    'assets/1.jpg',
    'https://www.factroom.ru/wp-content/uploads/2019/04/5-osobennostej-klimata-pitera-o-kotoryh-vy-dolzhny-znat-esli-sobiraetes-syuda-priekhat.jpg',
    'https://cdn.flixbus.de/2018-01/munich-header-d8_0.jpg',
    'assets/4.jpg',
    'assets/5.jpg',
  ];

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          SizedBox(height: 100),
          CarouselImages(
            scaleFactor: 0.7,
            listImages: listImages,
            height: 300.0,
            borderRadius: 30.0,
            cachedNetworkImage: true,
            verticalAlignment: Alignment.bottomCenter,
            onTap: (index) {

            },
          )
        ],
      ),
    );

  }
}