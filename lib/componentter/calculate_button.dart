import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_39_bmi_full/app_stylies.dart';
import 'package:flutter_application_39_bmi_full/utils/app_colors.dart';
import 'package:flutter_application_39_bmi_full/utils/app_text.dart';

class Calculatebutton extends StatelessWidget {
  const Calculatebutton({
    Key? key,
    this.onTap,
  }) : super(key: key);
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 70,
        width: double.infinity,
        child: Center(
          child: Text(
            TExtbay.calcu,
            style: Appstyles.TExtWhiteF26,
          ),
        ),
        color: AppColors.button,
      ),
    );
  }
}
