import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/features/on_boarding/ui/views/widgets/on_boarding_page_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Column(
        children: [
          const Expanded(
            child: OnBoardingPageView(),
          ),
          DotsIndicator(
            dotsCount: 2,
            decorator: DotsDecorator(
              activeColor: AppColors.primaryColor,
              color: AppColors.primaryColor.withOpacity(0.5),
            ),
          ),
          const SizedBox(height: 29),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
            child: CustomButton(
              onPressed: () {},
              text: 'ابدأ الآن',
            ),
          ),
          const SizedBox(height: 43),
        ],
      ),
    );
  }
}
