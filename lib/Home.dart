import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app_ui/gallary.dart';
class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(19, 19, 19, 1),
        body: Column(
          children: [
            Stack(children: [
              Image.asset(
                "assets/home.png",
                width: 497,
                height: 648,
              ),
              Positioned(
                  top: 440,
                  left: 30,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Dancing between",
                          style: GoogleFonts.inter(
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          )),
                      Text("The Shadows",
                          style: GoogleFonts.inter(
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          )),
                      Text("Of rhythm",
                          style: GoogleFonts.inter(
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          )),
                    ],
                  )),
            ]),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Color.fromRGBO(255, 46, 0, 1)),
                  minimumSize: MaterialStatePropertyAll(Size(261, 47))),
              onPressed: () {

                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return const Mygallary();
                },));
              },
              child: Text("Get started",
                  style: GoogleFonts.inter(
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                    color: const Color.fromRGBO(19, 19, 19, 1),
                  )),
            ),
           const  SizedBox(
              height: 18,
            ),
             ElevatedButton(
              style: const ButtonStyle(
                side: MaterialStatePropertyAll(BorderSide(color: Color.fromRGBO(255, 61, 0, 1),strokeAlign: 1)),
                backgroundColor:
                      MaterialStatePropertyAll(Colors.black),
                  minimumSize: MaterialStatePropertyAll(Size(261, 47))),
              onPressed: () {},
              child: Text("Continue with Email",
                  style: GoogleFonts.inter(
                    fontSize: 24,
                    fontWeight: FontWeight.w200,
                    color:const Color.fromRGBO(255, 46, 0, 1),

                  )),
            ),
          const SizedBox(
              height: 10,
            ),
            Text("by continuing you agree to terms", style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w200,
                    color:const  Color.fromRGBO(203, 200, 200, 1)
                    ),),
                    Text("of services and  Privacy policy", style: GoogleFonts.inter(
                    fontSize: 15,
                    fontWeight: FontWeight.w200,
                    color:const  Color.fromRGBO(203, 200, 200, 1)
                    ),),


          ],
        ));
  }
}
