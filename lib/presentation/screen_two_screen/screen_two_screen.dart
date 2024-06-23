import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:marwan_s_application10/core/app_export.dart';
import 'package:marwan_s_application10/presentation/screen_three_screen/screen_three_screen.dart';
import 'package:marwan_s_application10/widgets/custom_elevated_button.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
class ScreenTwoScreen extends StatelessWidget {
  const ScreenTwoScreen({Key? key})
      : super(
          key: key,
        );

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
            padding: EdgeInsets.symmetric(horizontal: 23.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMaskGroup,
                  height: 200.adaptSize,
                  width: 200.adaptSize,
                ),
                SizedBox(height: 69.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Make sure the image is of high resolution",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildSelectAnImage(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSelectAnImage(BuildContext context) {
    return CustomElevatedButton(
      text: "Select an image",
      margin: EdgeInsets.only(
        left: 56.h,
        right: 56.h,
        bottom: 33.v,


      ),
      buttonStyle: CustomButtonStyles.none,
     onPressed: () async {
       final picker = ImagePicker();
       final pickedFile = await picker.pickImage(source: ImageSource.gallery);
       if(pickedFile != null){
         try{
           FormData formData = FormData.fromMap({
             'file': await MultipartFile.fromFile(pickedFile.path, filename: 'image.jpg'),
           });

           Dio dio = Dio();
           dio.options.headers["Content-Type"] = "multipart/form-data";

           Response response = await dio.post(
           ' https://a185-154-190-136-76.ngrok-free.app/predict',
           //  'http://192.168.1.4:8000/predict',
             data: formData,
           );
           print('Response: ${response.data}');
           Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenThreeScreen(),));
         }
         catch (e){
           print('Error sending image to backend: $e');
         }
       } //else{}
      // Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenThreeScreen(),));
     },


      decoration: CustomButtonStyles.gradientIndigoAToPrimaryDecoration,
    );
  }
}
