import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/features/auth/ui/views/signin_view.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/services/shared_prefrences_singleton.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/features/on_boarding/ui/views/widgets/on_boarding_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  int currentPage = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();

    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Column(
        children: [
          Expanded(
            child: OnBoardingPageView(
              pageController: pageController,
            ),
          ),
          DotsIndicator(
            dotsCount: 2,
            decorator: DotsDecorator(
              activeColor: AppColors.primaryColor,
              color: currentPage == 1
                  ? AppColors.primaryColor
                  : AppColors.primaryColor.withOpacity(0.5),
            ),
          ),
          const SizedBox(height: 29),
          Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: currentPage == 1,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
              child: CustomButton(
                onPressed: () {
                  Prefs.setBool(kIsOnBoardingViewSeen, true);
                  Navigator.of(context).pushReplacementNamed(
                    SigninView.routeName,
                  );
                },
                text: 'ابدأ الآن',
              ),
            ),
          ),
          const SizedBox(height: 43),
        ],
      ),
    );
  }
}
