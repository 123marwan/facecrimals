import 'package:flutter/material.dart';
import 'package:marwan_s_application10/core/app_export.dart';
import 'package:marwan_s_application10/presentation/screen_five_screen/screen_five_screen.dart';
import 'package:marwan_s_application10/presentation/screen_one_screen/screen_one_screen.dart';
import 'package:marwan_s_application10/presentation/screen_two_screen/screen_two_screen.dart';
import 'package:marwan_s_application10/widgets/custom_elevated_button.dart';
import 'package:marwan_s_application10/widgets/custom_text_form_field.dart';

class login extends StatelessWidget {
  login({Key? key})
      : super(
          key: key,
        );

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  // final RegExp _regExp = RegExp(r'^[A-Za-z0-9]+(?:[ _-][A-Za-z0-9]+)*$');

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // String email;
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
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
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 27.h,
                  vertical: 53.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIstockphoto137,
                      height: 190.v,
                      width: 133.h,
                    ),
                    SizedBox(height: 45.v),
                    Text(
                      "Log In",
                      style: theme.textTheme.displaySmall,
                    ),
                    SizedBox(height: 37.v),
                    CustomTextFormField(
                      validator: (value){
                        if(userNameController.text.isEmpty){
                          return "email can't be empty";
                        }else{
                          if(!checkEmail(value!)){
                            return "invalid email";
                          }
                        }
                      },
                      hintText: "User Name",
                      textInputType: TextInputType.emailAddress,
                      controller: userNameController,
                    ),
                    SizedBox(height: 40.v),
                    CustomTextFormField(







                      controller: passwordController,
                      hintText: "Password",
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      obscureText: true,
                      validator: (value){
                       if(passwordController.text.isEmpty){
                         return "password can't be empty";
                       }else if(passwordController.text.length <6){
                         return "password is too short";
                       }
                      }
                    ),
                    SizedBox(height: 10.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 5.h),
                        child: Text(
                          "Forget Password ?",
                          style: CustomTextStyles.labelLargeLightblueA100b2,
                        ),
                      ),
                    ),
                    SizedBox(height: 29.v),
                    CustomElevatedButton(
                      width: 168.h,
                      text: "Log in",
                      onPressed: () {
                        var check = checkEmail(userNameController.text);
                        if (check == true) {
                          if (_formKey.currentState!.validate()) {
                            print('vaild');
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ScreenOneScreen(),
                                ));
                          } else
                            print('not');
                        } else {
                          print("Invalid Email");
                          if(_formKey.currentState!.validate()){}
                        }

                        // var checks = checkEmails(passwordController.text);
                        // if (checks == true) {
                        //   if (_formKey.currentState!.validate()) {
                        //     print('vaild');
                        //     Navigator.push(
                        //         context,
                        //         MaterialPageRoute(
                        //           builder: (context) => ScreenOneScreen(),
                        //         ));
                        //   } else
                        //     print('not');
                        // } else {
                        //   print("Invaild Email");
                        // }
                        // print(userNameController.text);
                        // print(passwordController.text);
                      },
                      buttonStyle: CustomButtonStyles.none,
                      decoration:
                          CustomButtonStyles.gradientIndigoAToPrimaryDecoration,
                    ),
                    SizedBox(height: 41.v),
                    Row(
                      children: [
                        Text('Don’t have any account?'),
                        TextButton(
                            onPressed: () {


                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => signup(),
                                  ));
                            },
                            child: Text('Sign up'))
                      ],
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool checkEmail(String text) {
    if (text.isEmpty || !RegExp(
        r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(text)) {
      return false;
    }else return true;
  }

  // bool checkEmails(String text) {
  //   if (text.isEmpty) {
  //     return false;
  //   }
  //
  //   if (!RegExp(
  //       r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
  //       .hasMatch(text)) {
  //     return false;
  //   }
  //   return true;
  // }

}
