import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tareqy/screens/change_password.dart';
import 'package:tareqy/themes/utils/size_utils.dart';

import '../themes/app_decoration.dart';
import '../themes/theme_helper.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    String selectedOption='English';
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        foregroundColor: Colors.white,
        backgroundColor: Color(0xff05035b),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body:  Container(
        color: const Color(0xff05035b),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 200,
                  height: 80,
                  child: SvgPicture.asset(
                    "assets/images/img_group.svg",
                    height: 150,
                    width: 200,
                    fit: BoxFit.contain,
                    colorFilter: ColorFilter.mode(
                        Colors.white, BlendMode.srcIn),
                  ),
                ),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: AppDecoration.outlineBlack,
                    child: Text(
                      "Tareqy",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.fSize,
                        fontFamily: 'Lemon',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () async{
                await showDialog(context: context, builder: (context) => StatefulBuilder(
                  builder:(context, setState) => AlertDialog(
                    title: Text("Select Language"),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        RadioListTile<String>(
                          title: Text('Arabic'),
                          value: 'Arabic',
                          groupValue: selectedOption,
                          onChanged: (value) {
                            setState(() {
                              selectedOption = value!;
                            });
                          },
                        ),

                        RadioListTile<String>(
                          title: Text('English'),
                          value: 'English',
                          groupValue: selectedOption,
                          onChanged: (value) {
                            setState(() {
                              selectedOption = value!;
                            });
                          },
                        ),
                        SizedBox(height: 5,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width/1.25,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff05035b),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                                side: const BorderSide(
                                    color: Colors.white, width: 0.5),
                              ),
                              foregroundColor: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Submit",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ));
              },
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.translate,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Change Language",
                      style:
                      TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ChangePasswordScreen(),),);
              },
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Change Password",
                      style:
                      TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            InkWell(
              onTap: () {

              },
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "About Us",
                      style:
                      TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            InkWell(
              onTap: () {

              },
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.text_snippet_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Terms and conditions",
                      style:
                      TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            InkWell(
              onTap: () {

              },
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.privacy_tip_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Privacy Policy",
                      style:
                      TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),

          ],
        ),
      ),
    );
  }
}
