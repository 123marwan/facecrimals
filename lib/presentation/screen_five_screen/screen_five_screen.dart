import 'package:flutter/material.dart';
import 'package:marwan_s_application10/core/app_export.dart';
import 'package:marwan_s_application10/presentation/screen_four_screen/screen_four_screen.dart';
import 'package:marwan_s_application10/presentation/screen_one_screen/screen_one_screen.dart';
import 'package:marwan_s_application10/widgets/custom_elevated_button.dart';
import 'package:marwan_s_application10/widgets/custom_text_form_field.dart';

class signup extends StatelessWidget {
  signup({Key? key})
      : super(
          key: key,
        );

  TextEditingController userNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 27.h,
                  vertical: 53.v,
                ),
                decoration: AppDecoration.gradientOnPrimaryToOnPrimaryContainer,
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgIstockphoto137,
                      height: 190.v,
                      width: 133.h,
                    ),
                    SizedBox(height: 44.v),
                    Text(
                      "Sign up",
                      style: theme.textTheme.displaySmall,
                    ),
                    SizedBox(height: 38.v),
                    _buildUserName(context),
                    SizedBox(height: 25.v),
                    _buildEmail(context),
                    SizedBox(height: 25.v),
                    _buildPassword(context),
                    SizedBox(height: 25.v),
                    _buildConfirmpassword(context),
                    SizedBox(height: 25.v),
                    _buildPhone(context),
                    SizedBox(height: 50.v),
                    _buildSignUpButton(context),
                    SizedBox(height: 36.v),
                    Row(
                      children: [
                        Text(
                          'Already have an account?',
                          style: CustomTextStyles.labelLargeb2ffffff,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => login(),
                                ));
                          },
                          child: Text('Log in'),
                        ),
                      ],
                    ),
                    SizedBox(height: 24.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return CustomTextFormField(
      validator: (value) {
        if (userNameController.text.isEmpty) {
          return "User Name can't be empty";
        } else {}
      },
      hintText: "User Name",
      textInputType: TextInputType.emailAddress,
      controller: userNameController,
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      validator: (value) {
        if (emailController.text.isEmpty) {
          return "email can't be empty";
        } else {
          if (!checkEmail(value!)) {
            return "invalid email";
          }
        }
      },
      hintText: "Email",
      textInputType: TextInputType.emailAddress,
      controller: emailController,
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
        controller: passwordController,
        hintText: "Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
        validator: (value) {
          if (passwordController.text.isEmpty) {
            return "password can't be empty";
          } else if (passwordController.text.length < 6) {
            return "password is too short";
          }
        });
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return CustomTextFormField(
        controller: confirmpasswordController,
        hintText: "Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
        validator: (value) {
          if (passwordController.text.isEmpty) {
            return "password can't be empty";
          } else if (passwordController.text !=
              confirmpasswordController.text) {
            return "didn't match password";
          }
        });
  }

  /// Section Widget
  Widget _buildPhone(BuildContext context) {
    return CustomTextFormField(
      controller: phoneController,
      hintText: "Phone",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.number,
      suffix: Padding(
        padding: EdgeInsets.fromLTRB(30.h, 25.v, 10.h, 22.v),
        child: Text(
          "+02",
          style: TextStyle(
            color: Color(0XB2FFFFFF),
            fontSize: 13.fSize,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 65.v,
      ),
      validator: (value) {
        if (phoneController.text.isEmpty) {
          return "enter phone";
        } else {
          String pattern = phoneController.text[0] +
              phoneController.text[1] +
              phoneController.text[2];
          if (
          phoneController.text.length < 11 ||
              (pattern != "010" && pattern != "011" && pattern != "012" && pattern != "015" )
          ) {
            return "Invalid Phone";
          }

        }
      },
    );
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
      width: 185.h,
      text: "Sign up",
      buttonStyle: CustomButtonStyles.none,
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ScreenOneScreen(),
              ));
        }
      },
      decoration: CustomButtonStyles.gradientIndigoAToPrimaryDecoration,
    );
  }

  bool checkEmail(String text) {
    if (text.isEmpty ||
        !RegExp(r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
            .hasMatch(text)) {
      return false;
    } else
      return true;
  }
}
