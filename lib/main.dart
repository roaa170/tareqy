import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tareqy/screens/layout.dart';
import 'package:tareqy/screens/splash_screen.dart';
import 'package:tareqy/themes/theme_helper.dart';
import 'package:tareqy/themes/utils/size_utils.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            title: 'Tareqy',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff05035b)),
              useMaterial3: true,
            ),
            home: const SplashScreen(),
          );
        }
    );
  }
}
