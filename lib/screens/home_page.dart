import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tareqy/screens/car_details.dart';
import 'package:tareqy/screens/rate_us.dart';
import 'package:tareqy/screens/welcome_screen.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

    return Column(
      children: [
        Expanded(
          flex: 1,
          child: AppBar(
            toolbarHeight: 120,
          
            title: const Text(
              "Username",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(50),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                  color: Color(0xff05035b),
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xff020034),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white, width: 0.5)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              "Your total balance",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Chip(
                              label: const Text(
                                "100 EGP",
                                style: TextStyle(
                                  color: Color(0xff05035b),
                                ),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
            actions: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(radius: 20, backgroundImage: AssetImage("assets/images/user.png")),
              ),

            ],
            backgroundColor: const Color(0xff05035b),
            iconTheme: const IconThemeData(color: Colors.white),
          ),
        ),
        Expanded(
          flex: 4,
          child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, crossAxisSpacing: 2, mainAxisSpacing: 2),
                  itemBuilder: (_, index) => buildCarCard(index,context),
                  itemCount: 8,
                ),
              ),
        ),
      ],
    );
  }

  Widget buildCarCard(int index,context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const CarDetailsScreen(),),);
      },
      child: Card(
        elevation: 3,
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  "https://www.topgear.com/sites/default/files/2022/07/6_0.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black, width: 1.5)),
                    child: const Text(
                      '593 | ب ط ن',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                  ),
                  const SizedBox(width: 5,),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xff05035b),
                      ),
                      child: const Text(
                        "20 EGP",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
