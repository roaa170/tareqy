import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tareqy/screens/create_account.dart';
import 'package:tareqy/screens/layout.dart';

import '../themes/app_decoration.dart';
import '../themes/theme_helper.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 250,
                      height: 100,
                      child: SvgPicture.asset(
                        "assets/images/img_group.svg",
                        height: 200,
                        width: 200,
                        fit: BoxFit.contain,
                        colorFilter: const ColorFilter.mode(
                          Color(0xff05035b),
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        decoration: AppDecoration.outlineBlack,
                        child: Text(
                          "Tareqy",
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Email",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Material(
                      elevation: 5.0,
                      shadowColor: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "Enter your email",

                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Password",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Material(
                      elevation: 5.0,
                      shadowColor: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter your password",
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {

                          },
                            child: const Text(
                          "Forget Password?",
                          style: TextStyle(
                            decoration: TextDecoration.underline,color: Colors.red,
                          ),
                        ))),
                    const SizedBox(height: 20,),
                    Center(
                      child: SizedBox(
                        // width: double.infinity,
                        height: 50,
                        width: MediaQuery.of(context).size.width/1.25,

                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),),
                            backgroundColor: const Color(0xff05035b),
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LayoutScreen(),),);
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const Row(children: [
                      Expanded(child: Divider(height: 2,color: Colors.grey,),),
                      SizedBox(width: 10,),
                      Text("OR",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                      SizedBox(width: 10,),

                      Expanded(child: Divider(height: 2,color: Colors.grey,),),

                    ],),
                    const SizedBox(height: 20,),
                    Center(
                      child: SizedBox(
                        // width: double.infinity,
                        width: MediaQuery.of(context).size.width/1.25,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),),
                            backgroundColor: Colors.green.shade700,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateAccountScreen(),));

                          },
                          child: const Text(
                            "Create Account",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
