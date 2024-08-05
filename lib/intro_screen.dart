import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key, required this.gotoLoginScreen});
  final void Function() gotoLoginScreen;

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {

  String path = 'assets/pic1.png';
  double buttonWidth = 80;
  String buttonText = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Image.asset(path),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 35,
                  width: 70,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 203, 179, 227),
                    borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                  child: TextButton(
                    onPressed: widget.gotoLoginScreen,
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        color: Color(0xFF6318AF),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 20,
                  height: 35,
                  color: Colors.white,
                )
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 80,
            width: buttonWidth,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              color: Color.fromARGB(255, 203, 179, 227)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  buttonText,
                  style: const TextStyle(
                    color: Color(0xFF6318AF),
                    fontSize: 22,
                    fontWeight: FontWeight.w500
                  ),
                ),
                IconButton(
                  onPressed: (){
                    setState(() {
                      if (path=='assets/pic1.png'){
                        path = 'assets/pic2.png';
                      } else if (path=='assets/pic2.png'){
                        buttonWidth=220;
                        path='assets/pic3.png';
                        buttonText = 'Get Started';
                      } else {
                        widget.gotoLoginScreen();
                      }
                    });
                  },
                  icon: const Icon(Icons.arrow_circle_right_rounded, color: Color(0xFF6318AF), size: 62,),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}