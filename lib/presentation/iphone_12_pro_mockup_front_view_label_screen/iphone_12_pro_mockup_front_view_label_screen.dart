import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:marwan_s_application10/core/app_export.dart';

class Iphone12ProMockupFrontViewLabelScreen extends StatelessWidget {
  final String? pickedImagePath;
  final Uint8List? apiImagePath;
  Iphone12ProMockupFrontViewLabelScreen({
    Key? key,
    this.pickedImagePath,
    this.apiImagePath,
  }) : super(key: key);
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
            color: theme.colorScheme.primaryContainer.withOpacity(1),
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
              horizontal: 30.h,
              vertical: 46.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 70.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 3.v),
                        child: Text(
                          "Successfully",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgMaskGroup31x31,
                        height: 31.adaptSize,
                        width: 31.adaptSize,
                        margin: EdgeInsets.only(left: 7.h),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 42.v),
                _buildClientTestimonials(context),
                Spacer(
                  flex: 28,
                ),
                Container(
                  width: 309.h,
                  margin: EdgeInsets.symmetric(horizontal: 2.h),
                  child: Text(
                    "This person matching \none of our Criminal records ",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.headlineSmallMedium,
                  ),
                ),
                Spacer(
                  flex: 71,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildClientTestimonials(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Image.file(File(pickedImagePath!)),
          height: 127.adaptSize,
          width: 127.adaptSize,
        ),



        Container(
          child:Image.memory(
            apiImagePath!, // Display the image returned by the API
            fit: BoxFit.cover,
            width: 200,
            height: 200,
          ),
          height: 127.adaptSize,
          width: 127.adaptSize,
        ),

      ],
    );
  }
}
