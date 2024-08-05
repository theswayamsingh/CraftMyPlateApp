import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'globals.dart' as globals;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required this.gotoVerifyScreen});
  final void Function() gotoVerifyScreen;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  var phoneNumController = TextEditingController();

  sendOTP () async {
    if (phoneNumController.text!=''){
      final auth = FirebaseAuth.instance;
      await auth.verifyPhoneNumber(
        phoneNumber: '+91${phoneNumController.text}',
        verificationCompleted: (PhoneAuthCredential credential){},
        // (PhoneAuthCredential credential) async {
        //   await auth.signInWithCredential(credential);
        //   widget.gotoVerifyScreen();
        // },
        verificationFailed: (FirebaseAuthException e){
          if (e.code=='invalid-phone-number'){
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: 
                  Text(
                    'Invalid Phone Number!'
                  ),
                duration: Duration(seconds: 3),
              )
            );
          }
        },
        codeSent: (String verificationId, int? resendToken) async {
          globals.code=verificationId;
          widget.gotoVerifyScreen();
          // Timer.periodic(const Duration(seconds: 3), (timer){
          //   if (globals.smsCode!=''){
          //     timer.cancel();
          //   }
          // });
          // Create a PhoneAuthCredential with the code
          // PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: verificationId, smsCode: globals.smsCode!);
          
          // Sign the user in (or link) with the credential
          // await auth.signInWithCredential(credential);
          // globals.verified=true;
        }, 
        codeAutoRetrievalTimeout: (String verificationId) {
          // Auto-resolution timed out...
        }
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 550,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
              image: DecorationImage(image: AssetImage('assets/p1.png'), fit: BoxFit.fill)
            ),
          ),
          SizedBox(
            width: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.only(top:15, left: 10),
                  child: Text(
                    'Log In or Sign Up with Craft My Plate',
                    style: GoogleFonts.lexend(
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: const BorderRadius.all(Radius.circular(10))
                        ),
                        child: Center(
                          child: Text(
                            '+91',
                            style: GoogleFonts.lexend(
                              fontSize: 20
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Container(
                        height: 60,
                        width: 310,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: const BorderRadius.all(Radius.circular(10))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: TextField(
                            controller: phoneNumController,
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                fontSize: 18,
                              ),
                              hintText: 'Enter Phone Number'
                            ),
                          ),
                        )
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 380,
                    decoration: BoxDecoration(
                      color: const Color(0xFF6318AF),
                      border: Border.all(color: Colors.grey),
                      borderRadius: const BorderRadius.all(Radius.circular(10))
                    ),
                    child: TextButton(
                      onPressed: sendOTP,
                      child: Text(
                        'Continue',
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
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'By continuing, I accept ',
                style: GoogleFonts.lexend(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 128, 128, 128)
                ),
              ),
              Text(
                'Terms & Conditions',
                style: GoogleFonts.lexend(
                  fontSize: 16,
                  color: const Color(0xFF6318AF),
                  fontWeight: FontWeight.w500
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'and ',
                style: GoogleFonts.lexend(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 128, 128, 128)
                ),
              ),
              Text(
                'Privacy Policy',
                style: GoogleFonts.lexend(
                  fontSize: 16,
                  color: const Color(0xFF6318AF),
                  fontWeight: FontWeight.w500
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}