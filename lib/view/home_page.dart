import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_39_bmi_full/app_stylies.dart';
import 'package:flutter_application_39_bmi_full/componentter/alert_dialog.dart';
import 'package:flutter_application_39_bmi_full/componentter/calculate_button.dart';
import 'package:flutter_application_39_bmi_full/componentter/male_female.dart';
import 'package:flutter_application_39_bmi_full/componentter/slider.dart';
import 'package:flutter_application_39_bmi_full/componentter/status.dart';
import 'package:flutter_application_39_bmi_full/componentter/weightAge.dart';
import 'package:flutter_application_39_bmi_full/utils/app_colors.dart';
import 'package:flutter_application_39_bmi_full/utils/app_text.dart';

class userpage extends StatefulWidget {
  const userpage({Key? key}) : super(key: key);

  @override
  State<userpage> createState() => _userpageState();
}

class _userpageState extends State<userpage> {
  bool isFemale = false;
  double height = 180;
  int weight = 60;
  int age = 28;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        centerTitle: true,
        title: const Text(
          TExtbay.AppBAr,
          style: Appstyles.textWhiteF22,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isFemale = false;
                        });
                      },
                      child: maleFemale(
                        isFemale: isFemale,
                        icon: Icons.male,
                        text: "Male",
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  StatusCard(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isFemale = true;
                        });
                      },
                      child: maleFemale(
                        isFemale: !isFemale,
                        icon: Icons.female,
                        text: 'Female',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            StatusCard(
              child: SliderWidget(
                currentSliderValue: height,
                onChanged: (value) {
                  setState(() {
                    height = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    child: WeightAge(
                      text: TExtbay.weight,
                      value: weight,
                      remove: (m) {
                        setState(() {
                          weight = m;
                        });
                      },
                      add: (m) {
                        setState(() {
                          weight = m;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 20),
                  StatusCard(
                    child: WeightAge(
                        text: TExtbay.age,
                        value: age,
                        remove: (m) {
                          setState(() {
                            age = m;
                          });
                        },
                        add: (m) {
                          setState(() {
                            age = m;
                          });
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Calculatebutton(
        onTap: () {
          final result = weight / pow(height / 100, 2);
          if (result <= 18.5) {
            showMyDialog(
                context: context, text: 'you are skinny, please, eat a lot');
          } else if (result >= 18.5 && result <= 24.9) {
            showMyDialog(context: context, text: 'you are ok! you are normal');
          } else if (result > 24.9) {
            showMyDialog(context: context, text: ' you are fat, go to diet');
          } else {
            showMyDialog(context: context, text: ' 404');
          }
        },
      ),
    );
  }
}
