import 'package:flutter/material.dart';
import 'package:flutter_fade_animation_example/utils/fade_animation.dart';
import 'package:flutter_fade_animation_example/utils/system_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool toggled = true;
  bool isHorizontal = false;

  //
  // @afifcodes
  // afifcodes.vercel.app/flutter
  //

  @override
  Widget build(BuildContext context) {
    systemUi();
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color(0xffF9AD6A),
            centerTitle: true,
            title: Text(
              'Fade Animation',
              style:
                  GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w500),
            )),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              toggled
                  ? FadeAnimation(
                      delay: 100,
                      isHorizontal: isHorizontal,
                      child:
                          Lottie.asset('assets/wonder-car.json', height: 300))
                  : const SizedBox(
                      height: 300,
                    ),
              TextButton(
                onPressed: () {
                  setState(() {
                    toggled = !toggled;
                  });
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xffF9AD6A))),
                child: Text(
                  'Toggle Animation',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500, color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    isHorizontal = !isHorizontal;
                  });
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xffF9AD6A))),
                child: Text(
                  isHorizontal
                      ? 'Make it from Vertical'
                      : 'Make it from Horizontal',
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500, color: Colors.white),
                ),
              ),
            ],
          ),
        ));
  }
}
