import 'package:flutter/material.dart';
import 'package:flutter_application_39_bmi_full/app_stylies.dart';
import 'package:flutter_application_39_bmi_full/utils/app_colors.dart';

class WeightAge extends StatelessWidget {
  const WeightAge({
    Key? key,
    required this.text,
    required this.value,
    required this.remove,
    required this.add,
  }) : super(key: key);
  final String text;
  final int value;
  final void Function(int) remove;
  final void Function(int) add;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 10),
        Text(
          text,
          style: Appstyles.textgreyF22,
        ),
        Text(
          "$value",
          style: Appstyles.TextF50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RemoveAddButton(
              iconData: Icons.remove,
              onPressed: () => remove(value - 1),
            ),
            const SizedBox(width: 20),
            RemoveAddButton(
              iconData: Icons.add,
              onPressed: () => add(value + 1),
            ),
          ],
        ),
      ],
    );
  }
}

class RemoveAddButton extends StatelessWidget {
  const RemoveAddButton({
    Key? key,
    required this.iconData,
    this.onPressed,
  }) : super(key: key);
  final IconData iconData;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      foregroundColor: AppColors.whiteT,
      backgroundColor: AppColors.ButonColor,
      onPressed: onPressed,
      child: Icon(iconData, size: 30),
    );
  }
}
