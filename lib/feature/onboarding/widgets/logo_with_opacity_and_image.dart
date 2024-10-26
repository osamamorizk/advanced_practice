import 'package:advance_flutter/core/helpers/assets.dart';
import 'package:advance_flutter/core/theaming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoWithOpacityAndImage extends StatelessWidget {
  const LogoWithOpacityAndImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(Assets.svgsLogoWithOpacity),
        Container(
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white.withOpacity(0),
                ],
                stops: [.14, .4],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            child: Image.asset(Assets.imagesDoctorImage)),
        Positioned(
          bottom: 30,
          right: 0,
          left: 0,
          child: Text(
            'Best Doctor\nAppointment App',
            textAlign: TextAlign.center,
            style: TextStyles.blueBlod32,
          ),
        ),
      ],
    );
  }
}
