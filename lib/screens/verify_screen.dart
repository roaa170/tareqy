import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tareqy/screens/layout.dart';

import '../widgets/custom_otp_input.dart';

class VerificationCodeScreen extends StatefulWidget {
  final String email="";
  final String password="";
  const VerificationCodeScreen({super.key,String? email,String? password});

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
  bool invalidOtp = false;
  int resendTime = 30;
  bool isLoading=true;
  late Timer countdownTimer;
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  TextEditingController txt3 = TextEditingController();
  TextEditingController txt4 = TextEditingController();
  TextEditingController txt5 = TextEditingController();
  TextEditingController txt6 = TextEditingController();

  @override
  void initState() {
    startTimer();
    super.initState();
  }


  startTimer() {
    countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        resendTime = resendTime - 1;
      });
      if (resendTime < 1) {
        countdownTimer.cancel();
      }
    });
  }

  stopTimer() {
    if (countdownTimer.isActive) {
      countdownTimer.cancel();
    }
  }

  String strFormatting(n) => n.toString().padLeft(2, '0');
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Create your account",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: 'Please enter the 6-digit code sent to your email ',
                  style: TextStyle(fontSize: 16,color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(text: '**********@gmail.com', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: ' for verification'),
                  ],
                ),
              ),

              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomOTPInput(context: context,controller: txt1,),
                      CustomOTPInput(context: context,controller: txt2,),
                      CustomOTPInput(context: context,controller: txt3,),
                      CustomOTPInput(context: context,controller: txt4,),
                      CustomOTPInput(context: context,controller: txt5,),
                      CustomOTPInput(context: context,controller: txt6,),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 80),



              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width/1.25,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),),
                      backgroundColor: const Color(0xff05035b),
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      final otp = txt1.text + txt2.text + txt3.text + txt4.text+txt5.text+txt6.text;
                      if (otp.length==6) {
                        // Go to welcome
                        setState(() {
                          invalidOtp=false;
                        });

                        print(otp.length);
                        stopTimer();
                        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                            const LayoutScreen()), (Route<dynamic> route) => false);
                      } else {
                        setState(() {
                          invalidOtp = true;
                        });
                      }                    },
                    child: const Text(
                      "Verify",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't receive any code?",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(width: 5,),
                  GestureDetector(
                    onTap: resendTime==0?() {
                      invalidOtp = false;
                      resendTime = 30;
                      startTimer();
                    }:null,
                    child: Text(
                      'Resend Again',style: TextStyle(fontSize: 15,color:resendTime==0?Colors.black:Colors.grey,fontWeight: FontWeight.bold,decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
              Align(alignment: Alignment.center,child: Text("Request a new code in 00:${strFormatting(resendTime)}s",style: const TextStyle(fontSize: 15,color: Colors.grey),)),
              SizedBox(height: 70,),
              Align(
                alignment: Alignment.center,
                child: Text(
                  invalidOtp ? 'x wrong validation code, please try again.' : '',
                  style: TextStyle(fontSize: 15, color: Colors.red.withOpacity(0.8),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
