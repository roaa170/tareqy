import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController oldPassword = TextEditingController();
    TextEditingController newPassword = TextEditingController();
    TextEditingController confirmPassword = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Change Password"),
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xff05035b),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        color: const Color(0xff05035b),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(0.5),
              ),
              child: TextFormField(
                textAlignVertical: TextAlignVertical.center,
                style: const TextStyle(color: Colors.white),
                autovalidateMode:
                AutovalidateMode.onUserInteraction,
                controller: oldPassword,
                obscureText: true,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  isDense: true,
                  hintText: "Old Password",
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.grey,
                    size: 24,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(0.5),
              ),
              child: TextFormField(
                textAlignVertical: TextAlignVertical.center,
                style: const TextStyle(color: Colors.white),

                autovalidateMode:
                AutovalidateMode.onUserInteraction,
                controller: newPassword,
                obscureText: true,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  isDense: true,
                  hintText: "New Password",
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.grey,
                    size: 24,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.withOpacity(0.5),
              ),
              child: TextFormField(
                style: const TextStyle(color: Colors.white),

                textAlignVertical: TextAlignVertical.center,
                autovalidateMode:
                AutovalidateMode.onUserInteraction,
                controller: confirmPassword,
                obscureText: true,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  isDense: true,
                  hintText: "Confirm Password",
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.grey,
                    size: 24,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25,),

            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width/1.25,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff05035b),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: const BorderSide(
                          color: Colors.white, width: 0.5),
                    ),
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Confirm",
                    style: TextStyle(fontSize: 20),
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
