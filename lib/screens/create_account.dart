import 'package:flutter/material.dart';
import 'package:tareqy/screens/verify_screen.dart';

import 'login.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Create your account",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30,),
              const Text(
                "User Name",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Material(
                elevation: 5.0,
                shadowColor: Colors.black,
                borderRadius: BorderRadius.circular(8),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Enter your username",
          
                    contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "ID",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Material(
                elevation: 5.0,
                shadowColor: Colors.black,
                borderRadius: BorderRadius.circular(8),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Enter your id",
          
                    contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
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
                height: 20,
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
                  keyboardType: TextInputType.emailAddress,
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
                height: 20,
              ),
              const Text(
                "Confirm Password",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Material(
                elevation: 5.0,
                shadowColor: Colors.black,
                borderRadius: BorderRadius.circular(8),
                child: TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Confirm your password",
          
                    contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => VerificationCodeScreen(),));
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                const Text(
                  "Already have an account ?",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5,),
                GestureDetector(onTap: () =>  Navigator.pop(context),child: Text("Login here",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: const Color(0xff05035b),decoration: TextDecoration.underline),))
              ]),
              SizedBox(height: 10,),

            ],
          ),
        ),
      ),
    );
  }
}
