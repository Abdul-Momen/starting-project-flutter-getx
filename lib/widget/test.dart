import 'package:aladin/helper/helper.dart';
import 'package:aladin/widget/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class WinGridViewItem extends StatelessWidget {

  const WinGridViewItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 291.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.red,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(3.5, 4.7),
            blurRadius: 5,
            spreadRadius: 3,
          )
        ],
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
