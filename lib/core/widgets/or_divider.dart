import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            color: Color(0xffCDCEDE),
            height: 1.5,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: Text(
            'أو',
            style: TextStyles.semiBold16,
          ),
        ),
        Expanded(
          child: Divider(
            color: Color(0xffCDCEDE),
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
