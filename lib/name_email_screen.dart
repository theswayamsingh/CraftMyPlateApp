import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'globals.dart' as globals;

class NameEmailScreen extends StatefulWidget {
  const NameEmailScreen({super.key, required this.gotoVerifyScreen, required this.gotoHomeScreen});
  final void Function() gotoVerifyScreen;
  final void Function() gotoHomeScreen;

  @override
  State<NameEmailScreen> createState() => _NameEmailScreenState();
}

class _NameEmailScreenState extends State<NameEmailScreen> {

  final name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: widget.gotoVerifyScreen,
              icon: const Icon(Icons.arrow_back_ios_sharp),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 30),
              child: Text(
                'Just a step away !',
                style: GoogleFonts.lexend(
                  fontSize: 28,
                  fontWeight: FontWeight.w400
                ),
              ),
            ),
            Container(
              height: 55,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                border: Border.all(color: Colors.grey)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 5),
                child: TextField(
                  controller: name,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Full Name*',
                    hintStyle: TextStyle(
                      color: Colors.grey
                    )
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              height: 55,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                border: Border.all(color: Colors.grey)
              ),
              child: const  Padding(
                padding: EdgeInsets.only(left: 8, right: 8, top: 5),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email ID*',
                    hintStyle: TextStyle(
                      color: Colors.grey
                    )
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 480, bottom: 30),
              child: Container(
                height: 60,
                width: 400,
                decoration: BoxDecoration(
                  color: const Color(0xFF6318AF),
                  border: Border.all(color: Colors.grey),
                  borderRadius: const BorderRadius.all(Radius.circular(10))
                ),
                child: TextButton(
                  onPressed: (){
                    globals.name=name.text;
                    widget.gotoHomeScreen();
                  },
                  child: Text(
                    'Let\'s Start',
                    style: GoogleFonts.lexend(
                      color: Colors.white,
                      fontSize: 18
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}