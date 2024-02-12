import 'package:flutter/material.dart';

class CustomOTPInput extends StatelessWidget {
  final BuildContext context;
  final TextEditingController controller;

  const CustomOTPInput(
      {super.key, required this.context, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: TextField(
          controller: controller,
          maxLength: 1,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          style: const TextStyle(fontSize: 20),
          decoration: InputDecoration(
              counterText: '',
              border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              contentPadding: EdgeInsets.zero,
              hintText: "-"),
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            } else {
              FocusScope.of(context).previousFocus();
            }
          },
        ),
      ),
    );
  }
}
