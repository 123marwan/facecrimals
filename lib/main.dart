import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:marwan_s_application10/presentation/screen_five_screen/screen_five_screen.dart';
import 'package:marwan_s_application10/presentation/screen_four_screen/screen_four_screen.dart';
import 'package:marwan_s_application10/presentation/screen_two_screen/screen_two_screen.dart';
import 'core/app_export.dart';
import 'presentation/screen_three_screen/screen_three_screen.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
         home:login (),
          title: 'marwan_s_application10',
          debugShowCheckedModeBanner: false,

        );
      },
    );
  }
}
