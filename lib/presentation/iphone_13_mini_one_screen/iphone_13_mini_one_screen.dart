import 'package:flutter/material.dart';
import 'package:marwan_s_application10/core/app_export.dart';

class Iphone13MiniOneScreen extends StatelessWidget {
  const Iphone13MiniOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Container(
            height: SizeUtils.height,
            width: double.maxFinite,
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
          ),
        ),
      ),
    );
  }
}
