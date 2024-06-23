import 'package:flutter/material.dart';
import 'package:marwan_s_application10/core/app_export.dart';
import 'package:marwan_s_application10/widgets/custom_elevated_button.dart';

class Iphone12ProMockupFrontViewLabelOneScreen extends StatelessWidget {
  const Iphone12ProMockupFrontViewLabelOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 39.h,
                vertical: 322.v,
              ),
              decoration: AppDecoration.gradientOnPrimaryToOnPrimaryContainer,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 22.v),
                  SizedBox(
                    width: 294.h,
                    child: Text(
                      "This person has no record\nin our data",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.headlineSmallMedium,
                    ),
                  ),
                  SizedBox(height: 24.v),
                  CustomElevatedButton(
                    text: "Go Back",
                    margin: EdgeInsets.symmetric(horizontal: 16.h),
                    buttonStyle: CustomButtonStyles.none,
                    decoration:
                        CustomButtonStyles.gradientIndigoAToPrimaryDecoration,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
