import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../login.dart';

final List<String> imgList = [
  'assets/images/aircraft.png',
  'assets/images/heavy.png'
];

final themeMode = ValueNotifier(2);

final List<Widget> imageSliders = imgList
    // ignore: avoid_unnecessary_containers
    .map((item) => Container(
          child: Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                  ],
                )),
          ),
        ))
    .toList();

class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(1000, 127, 211, 237),
      body: Column(children: [
        Container(
            margin: const EdgeInsets.only(top: 150),
            alignment: Alignment.center,
            child: Column(
              children: [
                CarouselSlider(
                  items: imageSliders,
                  carouselController: _controller,
                  options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: false,
                      aspectRatio: 2.0,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }),
                ),
              ],
            )),
        Container(
          margin:
              const EdgeInsets.only(top: 60, bottom: 20, left: 20, right: 20),
          child: const Text(
            "Dapatkan Rate yang sesuai dengan kebutuhan Anda!",
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontFamily: "Inter"),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(232, 255, 255, 255)),
                ),
              );
            }).toList(),
          ),
        ),
        Container(
            margin: const EdgeInsets.only(top: 50, left: 20, right: 10),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Lewati",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: "Inter"),
                    ),
                    Container(
                        margin: const EdgeInsets.only(left: 200),
                        child: OutlinedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Color.fromARGB(1000, 127, 211, 237)),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                          child: Text('Lanjutkan'),
                        )),
                  ],
                ),
              ],
            ))
      ]),
    );
  }
}
