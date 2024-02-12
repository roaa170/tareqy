import 'dart:developer';
import 'dart:io';
import 'package:datetime_picker_formfield_new/datetime_picker_formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  final format = DateFormat("yyyy-MM-dd");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverFillRemaining(

            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  const SizedBox(height: 30,),
                Stack(
                alignment: Alignment.bottomRight,
                children: [
                  const CircleAvatar(
                    radius: 83,
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage(
                        "assets/images/user.png",),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      log("Update profile photo");
                    },
                    child: const CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor:  Color(0xff05035b),
                        child: Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
                  const SizedBox(
                    height: 40,
                  ),
                  Expanded(
                    child: Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5.0),
                                child: Text("Username",style: TextStyle(fontSize: 17),),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey.shade200,
                                ),
                                child: TextFormField(
                                  textAlignVertical: TextAlignVertical.center,

                                  autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                                  controller: username,
                                  keyboardType: TextInputType.name,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    isDense: true,
                                    prefixIcon: Icon(
                                      Icons.person,
                                      color: Colors.grey,
                                      size: 24,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5.0),
                                child: Text("Birthday Date",style: TextStyle(fontSize: 17),),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey.shade200,
                                ),
                                child: DateTimeField(
                                  format: format,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    isDense: true,
                                    prefixIcon: Icon(
                                      Icons.calendar_month,
                                      color: Colors.grey,
                                      size: 24,
                                    ),
                                  ),
                                  onShowPicker: (context, currentValue) {
                                    return showDatePicker(
                                      context: context,
                                      firstDate: DateTime(1900),
                                      initialDate: currentValue ?? DateTime.now(),
                                      lastDate: DateTime(2100),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5.0),
                            child: Text("Phone number",style: TextStyle(fontSize: 17),),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade200,
                            ),
                            child: TextFormField(
                              textAlignVertical: TextAlignVertical.center,

                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              controller: phone,
                              keyboardType: TextInputType.phone,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.phone,
                                  color: Colors.grey,
                                  size: 24,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5.0),
                            child: Text("Email",style: TextStyle(fontSize: 17),),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade200,
                            ),
                            child: TextFormField(
                              textAlignVertical: TextAlignVertical.center,

                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              controller: email,
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                isDense: true,

                                prefixIcon: IconButton(
                                  onPressed: null,
                                  icon: Icon(
                                    Icons.email_outlined,
                                    color: Colors.grey,
                                    size: 24,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Center(
                            child: SizedBox(
                              width: double.infinity,
                              height: 50,
                              // width: MediaQuery.of(context).size.width/1.25,

                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),),
                                  backgroundColor: const Color(0xff05035b),
                                  foregroundColor: Colors.white,
                                ),
                                onPressed: () {},
                                child: const Text(
                                  "Update",
                                  style: TextStyle(fontSize: 20),
                                ),
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
          ),
        ],
      ),
    );

  }
}
