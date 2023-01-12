import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_39_bmi_full/app_stylies.dart';
import 'package:flutter_application_39_bmi_full/utils/app_colors.dart';
import 'package:flutter_application_39_bmi_full/utils/app_text.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    Key? key,
    required this.currentSliderValue,
    required this.onChanged,
  }) : super(key: key);
  final double currentSliderValue;

  final void Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            TExtbay.height,
            style: Appstyles.textgreyF22,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${currentSliderValue.toInt()}',
                style: Appstyles.TextF50,
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: Text(
                  TExtbay.cm,
                  style: Appstyles.textH35,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SizedBox(
              width: double.infinity,
              child: CupertinoSlider(
                max: 300,
                value: currentSliderValue,
                onChanged: onChanged,
                // (value) {
                //   // setState(() {
                //   //   _currentSliderValue = value;
                //   // });
                // },
                activeColor: AppColors.whiteT,
                thumbColor: AppColors.button,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
