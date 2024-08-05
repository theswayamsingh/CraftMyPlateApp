import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'globals.dart' as globals;

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key, required this.gotoEmailNameScreen, required this.gotoLoginScreen});
  final void Function() gotoLoginScreen;
  final void Function() gotoEmailNameScreen;

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {

  submit () async {
    if (globals.isCodeEntered){
      try{
        final cred = PhoneAuthProvider.credential(verificationId: globals.code!, smsCode: globals.codeEntered);
        await FirebaseAuth.instance.signInWithCredential(cred);
        widget.gotoEmailNameScreen();
      } catch(e){
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: 
              Text(
                e.toString()
              ),
            duration: const Duration(seconds: 3),
          )
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: widget.gotoLoginScreen,
                  icon: const Icon(Icons.arrow_back_ios_sharp),
                ),
                Text(
                  'OTP Verification',
                  style: GoogleFonts.lexend(
                    fontSize: 20,
                    fontWeight: FontWeight.w400
                  ),
                ),
                const SizedBox(width: 20,)
              ],
            ),
          ),
          Text(
            'We have sent a verification code to',
            style: GoogleFonts.lexend(
              color: const Color.fromARGB(255, 128, 128, 128),
              fontSize: 20,
              fontWeight: FontWeight.w300
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '+91 XXXXXX6794',
                style: GoogleFonts.lexend(
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                ),
              ),
              const Icon(Icons.verified, color: Colors.green,)
            ],
          ),
          const SizedBox(height: 50,),
          OtpTextField(
            numberOfFields: 6,
            fieldWidth: 40,
            onSubmit: (String code) {
              globals.codeEntered=code;
              globals.isCodeEntered=true;
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, bottom: 30),
            child: Container(
              height: 60,
              width: 380,
              decoration: BoxDecoration(
                color: const Color(0xFF6318AF),
                border: Border.all(color: Colors.grey),
                borderRadius: const BorderRadius.all(Radius.circular(10))
              ),
              child: TextButton(
                onPressed: submit,
                child: Text(
                  'Submit',
                  style: GoogleFonts.lexend(
                    color: Colors.white,
                    fontSize: 18
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Didn\'t receive code? ',
                style: GoogleFonts.lexend(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 128, 128, 128)
                ),
              ),
              Text(
                'Resend Again',
                style: GoogleFonts.lexend(
                  fontSize: 16,
                  color: const Color(0xFF6318AF),
                  fontWeight: FontWeight.w500
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}