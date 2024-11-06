import 'package:advance_flutter/core/helpers/assets.dart';

import 'package:advance_flutter/feature/home/presentation/views/widgets/container_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlueBanner extends StatelessWidget {
  const BlueBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 196.h,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 18.w,
              vertical: 16.h,
            ),
            height: 167.h,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(Assets.imagesBlueContainer))),
            child: BlueContainerTextButton(),
          ),
          Positioned(
            top: 0,
            right: 8,
            child: Image.asset(
              Assets.imagesDoctorBanner,
              height: 200.h,
            ),
          ),
        ],
      ),
    );
  }
}
