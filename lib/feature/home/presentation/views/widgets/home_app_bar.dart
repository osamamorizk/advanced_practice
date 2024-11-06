import 'package:advance_flutter/core/helpers/assets.dart';
import 'package:advance_flutter/core/theaming/colors.dart';
import 'package:advance_flutter/core/theaming/text_styles.dart';
import 'package:flutter/material.dart';

class HomeUpBar extends StatelessWidget {
  const HomeUpBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Osama!',
              style: TextStyles.font18blackBlod,
            ),
            Text(
              'How Are you Today?',
              style: TextStyles.font13GreyNormal,
            ),
          ],
        ),
        Spacer(),
        CircleAvatar(
            backgroundColor: ColorsManger.greyNotification,
            child: Image.asset(height: 24, Assets.imagesNotification)),
      ],
    );
  }
}
