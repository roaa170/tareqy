import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:tareqy/screens/home_page.dart';
import 'package:tareqy/screens/profile.dart';
import 'package:tareqy/screens/rate_us.dart';
import 'package:tareqy/screens/settings.dart';
import 'package:tareqy/screens/support.dart';
import 'package:tareqy/screens/welcome_screen.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

    _controller = PersistentTabController(initialIndex: 0);

    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.grey.shade200,
          child: Column(
            children: [
              const Padding(
                padding:
                EdgeInsets.only(top: 40.0, right: 10, left: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(radius: 50, backgroundImage: AssetImage("assets/images/user.png")),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Username",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text("@user_name"),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: const Color(0xff05035b),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
      
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.monetization_on,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Payment",
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const RateUsScreen(),),);
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.stars,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Rate us",
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
                                Icons.call,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Call us",
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SupportScreen(),),);
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Icon(
                                CupertinoIcons.question_circle_fill,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Support",
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsScreen(),),);
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.settings_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Settings",
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
      
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                                side: const BorderSide(
                                    color: Colors.white, width: 0.5),
                              ),
                              foregroundColor: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.of(context, rootNavigator: true)
                                  .pushAndRemoveUntil(
                                MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return WelcomeScreen();
                                  },
                                ),
                                    (_) => false,
                              );                            },
                            child: const Row(
                              children: [
                                Text(
                                  "Sign out",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Spacer(),
                                Icon(Icons.logout),
                              ],
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
      
        bottomNavigationBar: PersistentTabView(
          context,
          controller: _controller,
          screens: _buildScreens(),
          items: _navBarsItems(),
          confineInSafeArea: true,
          backgroundColor: Colors.white, // Default is Colors.white.
          handleAndroidBackButtonPress: true, // Default is true.
          resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
          stateManagement: true, // Default is true.
          hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
          decoration: NavBarDecoration(
            borderRadius: BorderRadius.circular(0.0),
            colorBehindNavBar:  Color(0xff05035b),
          ),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
          popAllScreensOnTapAnyTabs: true,
          navBarStyle: NavBarStyle.style12, // Choose the nav bar style with this property.
        ),
      ),
    );
  }

  List<Widget> _buildScreens() {
    return [
      HomePageScreen(),
      ProfileScreen(),
    ];
  }


  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.account_balance_wallet_outlined),
        title: ("Balance"),
        activeColorPrimary: Color(0xff0300a4),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),

      PersistentBottomNavBarItem(
        icon: Icon(Icons.person_outline),
        title: ("Profile"),
        activeColorPrimary: Color(0xff0300a4),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }
}
