import 'package:flutter/material.dart';
import 'package:marwan_s_application10/presentation/iphone_13_mini_one_screen/iphone_13_mini_one_screen.dart';
import 'package:marwan_s_application10/presentation/screen_three_screen/screen_three_screen.dart';
import 'package:marwan_s_application10/presentation/iphone_12_pro_mockup_front_view_label_screen/iphone_12_pro_mockup_front_view_label_screen.dart';
import 'package:marwan_s_application10/presentation/iphone_12_pro_mockup_front_view_label_one_screen/iphone_12_pro_mockup_front_view_label_one_screen.dart';
import 'package:marwan_s_application10/presentation/screen_one_screen/screen_one_screen.dart';
import 'package:marwan_s_application10/presentation/screen_two_screen/screen_two_screen.dart';
import 'package:marwan_s_application10/presentation/screen_four_screen/screen_four_screen.dart';
import 'package:marwan_s_application10/presentation/screen_five_screen/screen_five_screen.dart';
import 'package:marwan_s_application10/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String iphone13MiniOneScreen = '/iphone_13_mini_one_screen';

  static const String screenThreeScreen = '/screen_three_screen';

  static const String iphone12ProMockupFrontViewLabelScreen =
      '/iphone_12_pro_mockup_front_view_label_screen';

  static const String iphone12ProMockupFrontViewLabelOneScreen =
      '/iphone_12_pro_mockup_front_view_label_one_screen';

  static const String screenOneScreen = '/screen_one_screen';

  static const String screenTwoScreen = '/screen_two_screen';

  static const String screenFourScreen = '/screen_four_screen';

  static const String screenFiveScreen = '/screen_five_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    iphone13MiniOneScreen: (context) => Iphone13MiniOneScreen(),
    screenThreeScreen: (context) => ScreenThreeScreen(),
    iphone12ProMockupFrontViewLabelScreen: (context) =>
        Iphone12ProMockupFrontViewLabelScreen(),
    iphone12ProMockupFrontViewLabelOneScreen: (context) =>
        Iphone12ProMockupFrontViewLabelOneScreen(),
    screenOneScreen: (context) => ScreenOneScreen(),
    screenTwoScreen: (context) => ScreenTwoScreen(),
    screenFourScreen: (context) => login(),
    screenFiveScreen: (context) => signup(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
