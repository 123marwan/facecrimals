import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:marwan_s_application10/core/app_export.dart';
import 'package:marwan_s_application10/presentation/iphone_12_pro_mockup_front_view_label_one_screen/iphone_12_pro_mockup_front_view_label_one_screen.dart';
import 'package:marwan_s_application10/presentation/iphone_12_pro_mockup_front_view_label_screen/iphone_12_pro_mockup_front_view_label_screen.dart';
import 'package:marwan_s_application10/presentation/iphone_13_mini_one_screen/iphone_13_mini_one_screen.dart';
import 'package:marwan_s_application10/presentation/screen_one_screen/screen_one_screen.dart';

class ScreenThreeScreen extends StatefulWidget {
  final String? pickedImagePath;
  final Uint8List? apiImagePath;

  ScreenThreeScreen({
    Key? key,
    this.pickedImagePath,
    this.apiImagePath,
  }) : super(key: key);

  @override
  State<ScreenThreeScreen> createState() => _ScreenThreeScreenState();
}

class _ScreenThreeScreenState extends State<ScreenThreeScreen> {
  int progress = 0;

  @override
  Widget build(BuildContext context) {
    if (progress < 100) {
      loadProgress();
    }

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                theme.colorScheme.onPrimary,
                theme.colorScheme.onPrimaryContainer,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 22.h,
              vertical: 46.v,
            ),
            child: Column(
              children: [
                SizedBox(height: 43.v),
                Text(
                  "Scanning ...",
                  style: theme.textTheme.headlineLarge,
                ),
                SizedBox(height: 76.v),
                CustomImageView(
                  imagePath: ImageConstant.imgMaskGroup,
                  height: 200.adaptSize,
                  width: 200.adaptSize,
                ),
                Spacer(),
                Container(
                  height: 9.v,
                  width: 331.h,
                  decoration: BoxDecoration(
                    color: appTheme.indigo400,
                    borderRadius: BorderRadius.circular(
                      4.h,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      4.h,
                    ),
                    child: LinearProgressIndicator(
                      value: progress / 100,
                      backgroundColor: appTheme.indigo400,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        appTheme.lightBlueA100,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 22.v),
                Text(
                  "$progress% Completed",
                  style: theme.textTheme.titleLarge,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  loadProgress() async {
    await Future.delayed(Duration(milliseconds: 500));
    progress += 10;
    if (progress <= 100) setState(() {});
    if (progress == 100) {
      Future.delayed(Duration(seconds: 1), () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Iphone12ProMockupFrontViewLabelScreen(pickedImagePath: widget.pickedImagePath,apiImagePath:widget.apiImagePath),));
      },);
    }
  }
}
