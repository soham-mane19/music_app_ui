
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app_ui/player.dart';
import 'package:carousel_slider/carousel_slider.dart';
class Mygallary extends StatefulWidget {
  const Mygallary({super.key});

  @override
  State<Mygallary> createState() => _MygallaryState();
}

class _MygallaryState extends State<Mygallary> {
 
  int currentIndex = 0;
   final List<String> imageList = [
    "assets/alone.png",
    "assets/alone.png",
    "assets/alone.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(19, 19, 19, 1),
      body: SingleChildScrollView(
          child: Column(children: [
        const SizedBox(
          height: 25,
        ),
        CarouselSlider.builder(
          itemCount: imageList.length,
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 1.3,
            onPageChanged: (index, reason) {
              //  log("$index");
              setState(() {
                currentIndex = index;
              });
            },
          ),
          itemBuilder: (context, index, realIndex) => Stack(
            children: [
              Image.asset(
                imageList[index],
              ),
              Positioned(
                top: 200,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "A.L.O.N.E",
                      style: GoogleFonts.inter(
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Color.fromRGBO(255, 46, 0, 1),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Subscribe",
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(19, 19, 19, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(imageList.length, (index) {
            return _buildIndicator(index == currentIndex);
          }),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Discography",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(255, 46, 0, 1),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "See all",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(248, 162, 69, 1),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset("assets/Dead.png"),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Dead inside",
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(203, 200, 200, 1),
                          ),
                        ),
                        Text(
                          "2020",
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w100,
                            color: const Color.fromRGBO(203, 200, 200, 1),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const Player(),
                              ),
                            );
                          },
                          child: Image.asset("assets/Alone2.png"),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Alone",
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(203, 200, 200, 1),
                          ),
                        ),
                        Text(
                          "2023",
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w100,
                            color: const Color.fromRGBO(203, 200, 200, 1),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset("assets/Heartless.png"),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Heartless",
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(203, 200, 200, 1),
                          ),
                        ),
                        Text(
                          "2023",
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w100,
                            color: const Color.fromRGBO(203, 200, 200, 1),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset("assets/Alone2.png"),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Alone",
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(203, 200, 200, 1),
                          ),
                        ),
                        Text(
                          "2023",
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w100,
                            color: const Color.fromRGBO(203, 200, 200, 1),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 22),
              Row(
                children: [
                  Text(
                    "Popular singles",
                    style: GoogleFonts.inter(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(203, 200, 200, 1),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "See all",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(248, 162, 69, 1),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 22),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/wearechoes.png"),
                  const SizedBox(width: 18),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "We Are Chaos",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(203, 200, 200, 1),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "2023 * Easy Living",
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w100,
                          color: const Color.fromRGBO(203, 200, 200, 1),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 140),
                    child: Column(
                      children: [
                        Container(
                          height: 5,
                          width: 5,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(217, 217, 217, 1),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          height: 5,
                          width: 5,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(217, 217, 217, 1),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          height: 5,
                          width: 5,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(217, 217, 217, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/Smile.png"),
                  const SizedBox(width: 18),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Smile",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(203, 200, 200, 1),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "2023 * Berrechid",
                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w100,
                          color: const Color.fromRGBO(203, 200, 200, 1),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 140),
                    child: Column(
                      children: [
                        Container(
                          height: 5,
                          width: 5,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(217, 217, 217, 1),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          height: 5,
                          width: 5,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(217, 217, 217, 1),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Container(
                          height: 5,
                          width: 5,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(217, 217, 217, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ])),
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
                color: Color.fromRGBO(230, 154, 21, 1),
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
              ),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.home,
                color: Color.fromRGBO(157, 178, 206, 1),
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Color.fromRGBO(157, 178, 206, 1),
              ),
            ),
            label: 'Cart',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildIndicator(bool isActive) {
    // log("$isActive");
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2.0),
      height: 7.0,
      width: isActive ? 21.0 : 7.0,
      decoration: BoxDecoration(
        color: isActive
            ? const Color.fromRGBO(255, 61, 0, 1)
            : const Color.fromRGBO(159, 159, 159, 1),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
