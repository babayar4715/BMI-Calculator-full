import 'package:flutter/material.dart';
import 'package:flutter_application_39_bmi_full/app_stylies.dart';
import 'package:flutter_application_39_bmi_full/componentter/male_female.dart';
import 'package:flutter_application_39_bmi_full/utils/app_colors.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: AppColors.cardC,
        child: child,
      ),
    );
  }
}
