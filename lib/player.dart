import 'dart:async';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:music_app_ui/Home.dart';

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  double slidervalue = 0.0;
  bool play = false;
  bool repeat = false;
  Timer? timer;
  bool sound = false;
  void starttimer() {
    timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      setState(() {
        if (slidervalue < 1.0) {
          slidervalue = slidervalue + 0.01;
        } else {
          slidervalue = 0.0;
          stoptimer();
        }
      });
    });
  }

  void stoptimer() {
    timer?.cancel();
    setState(() {
      play = false;
    });
  }

  void tooglebox() {
    if (play) {
      stoptimer();
    } else {
      setState(() {
        play = true;
      });
      starttimer();
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(19, 19, 19, 1),
        body: Column(children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset("assets/player.png"),
              Positioned(
                  top: 475,
                  child: Column(
                    children: [
                      Text(
                        "Alone in the Abyss",
                        style: GoogleFonts.inter(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(230, 154, 21, 1)),
                      ),
                      Text(
                        "Youlakou",
                        style: GoogleFonts.inter(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ],
                  )),
              const Positioned(
                top: 515,
                left: 348,
                child: Icon(
                  Icons.ios_share_rounded,
                  size: 22,
                  weight: 25,
                  color: Color.fromRGBO(230, 154, 21, 1),
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Dynamic Warmup |",
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(255, 255, 255, 1)),
                    ),
                    const Spacer(),
                    Text(
                      "4 min",
                      style: GoogleFonts.inter(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(255, 255, 255, 1)),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SliderTheme(
                  data: const SliderThemeData(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 0)),
                  child: Slider(
                    value: slidervalue,
                    onChanged: (value) {
                      setState(() {
                        slidervalue = value;
                      });
                    },
                    activeColor: Colors.orange,
                    inactiveColor: const Color.fromRGBO(217, 217, 217, 0.19),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      repeat = !repeat;
                    });
                  },
                  icon: Icon(
                    repeat ? Icons.repeat_one : Icons.repeat,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    size: 20,
                    weight: 20,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.skip_previous,
                    color: Color.fromRGBO(255, 255, 255, 1),
                    size: 20,
                    weight: 20,
                  )),
              IconButton(
                  onPressed: () {
                    tooglebox();
                  },
                  icon: Icon(
                    play ? Icons.pause_circle : Icons.play_circle,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    size: 50,
                    weight: 50,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.skip_next,
                    color: Color.fromRGBO(255, 255, 255, 1),
                    size: 25,
                    weight: 25,
                  )),
              IconButton(
                  onPressed: () {
                    setState(() {
                        sound = !sound;
                    });
                  
                  },
                  icon: Icon(
                  sound? Icons.volume_off:Icons.volume_up,
                    color: Color.fromRGBO(255, 255, 255, 1),
                    size: 24,
                    weight: 24,
                  ))
            ],
          )
        ]),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            selectedItemColor: const Color.fromRGBO(230, 154, 21, 1),
            unselectedItemColor: Colors.white,
            selectedLabelStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
            backgroundColor: const Color.fromARGB(19, 19, 19, 1),
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {
                    setState(() {});
                  },
                  icon: const Icon(
                    Icons.favorite_border,
                    color: Color.fromRGBO(157, 178, 206, 1),
                  ),
                ),
                label: 'Favorite',
              ),
              BottomNavigationBarItem(
                icon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: Color.fromRGBO(157, 178, 206, 1),
                    )),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: IconButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const MainApp();
                      }));
                    },
                    icon: const Icon(
                      Icons.home,
                      color: Color.fromRGBO(157, 178, 206, 1),
                    )),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_cart,
                      color: Color.fromRGBO(157, 178, 206, 1),
                    )),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person,
                    color: Color.fromRGBO(157, 178, 206, 1),
                  ),
                ),
                label: 'Profile',
              ),
            ]));
  }
}
