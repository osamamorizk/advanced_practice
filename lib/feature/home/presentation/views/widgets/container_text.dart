import 'package:advance_flutter/core/helpers/spacing.dart';
import 'package:advance_flutter/core/theaming/text_styles.dart';
import 'package:flutter/material.dart';

class BlueContainerTextButton extends StatelessWidget {
  const BlueContainerTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Book and\nschedule with\nnearest doctor',
          style: TextStyles.font18WhiteMedium,
        ),
        verticalSpacing(8),
        Builder(builder: (context) {
          return Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(48),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Find Nearby',
                style: TextStyles.font14blueNormal,
              ),
            ),
          );
        })
      ],
    );
  }
}
