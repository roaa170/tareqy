import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tareqy/screens/login.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Image.asset("assets/images/background.png",
                      width: double.infinity,
                      fit: BoxFit.fill,
                      filterQuality: FilterQuality.high),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 40,),
                        SizedBox(
                          width: 150,
                          height: 80,
                          child: SvgPicture.asset(
                            "assets/images/img_group.svg",
                            // height: 200,
                            // width: 180,
                            fit: BoxFit.contain,
                            colorFilter: const ColorFilter.mode(
                                Color(0xff05035b), BlendMode.srcIn),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        const Text("Welcome \nBack",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));
                      },
                      child: SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: const DecorationImage(
                                image: AssetImage("assets/images/background_button.png"),
                                fit: BoxFit.fitWidth,
                            ),
                          ),
                          child: Center(
                            child: const Text(
                                "Continue",
                                style: TextStyle(fontSize: 20,color: Colors.white),
                              ),
                          ),

                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: const BorderSide(color: Color(0xff05035b))),
                          foregroundColor: const Color(0xff05035b),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Arabic",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: const BorderSide(color: Color(0xff05035b))),
                          foregroundColor: const Color(0xff05035b),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "English",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
