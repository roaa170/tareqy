import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tareqy/screens/welcome_screen.dart';
import 'package:page_transition/page_transition.dart';
import '../themes/app_decoration.dart';
import '../themes/theme_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: false);
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(1.5, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticIn,
  ));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(milliseconds: 2300),
          () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => WelcomeScreen()),
            );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SlideTransition(
              position: _offsetAnimation,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 220,
                  height: 80,
                  child: SvgPicture.asset(
                    "assets/images/img_group.svg",
                    height: 200,
                    width: 100,
                    fit: BoxFit.contain,
                    colorFilter:
                        const ColorFilter.mode(Color(0xff05035b), BlendMode.srcIn,
                        ),
                  ),
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
                  style: theme.textTheme.displaySmall,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
