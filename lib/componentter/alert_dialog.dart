import 'package:flutter/material.dart';
import 'package:flutter_application_39_bmi_full/app_stylies.dart';
import 'package:flutter_application_39_bmi_full/utils/app_colors.dart';
import 'package:flutter_application_39_bmi_full/utils/app_text.dart';

Future<void> showMyDialog({
  required BuildContext context,
  required String text,
}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: AppColors.backgroundColor,
        title: const Text(
          TExtbay.AppBAr,
          style: Appstyles.textWhiteF22,
          textAlign: TextAlign.center,
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(
                text,
                style: Appstyles.textWhiteF18,
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('try again'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
