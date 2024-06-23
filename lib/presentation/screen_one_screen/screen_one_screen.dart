import 'package:flutter/material.dart';
import 'package:marwan_s_application10/core/app_export.dart';
import 'package:marwan_s_application10/presentation/screen_two_screen/screen_two_screen.dart';
import 'package:marwan_s_application10/widgets/custom_elevated_button.dart';

class ScreenOneScreen extends StatelessWidget {
  const ScreenOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      theme.colorScheme.onPrimaryContainer
                    ])),
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 34.h),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 43.v),
                          CustomImageView(
                              imagePath: ImageConstant.imgIstockphoto137,
                              height: 190.v,
                              width: 133.h),
                          SizedBox(height: 33.v),
                          Text("Criminal Face Detection",
                              style: theme.textTheme.headlineSmall),
                          SizedBox(height: 33.v),
                          SizedBox(
                              width: 306.h,
                              child: Text(
                                  "We are here to help you recognize a criminal\nusing AI technology",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.bodyMedium))
                        ]))),
            bottomNavigationBar: _buildGetStartedButton(context)));
  }

  /// Section Widget
  Widget _buildGetStartedButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Get Started",
        margin: EdgeInsets.only(left: 56.h, right: 56.h, bottom: 33.v),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientIndigoAToPrimaryTL9Decoration,
        buttonTextStyle: CustomTextStyles.headlineSmallMedium,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenTwoScreen(),));
        });
  }

  /// Navigates to the screenTwoScreen when the action is triggered.
  onTapGetStartedButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.screenTwoScreen);
  }
}
