import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/features/auth/ui/views/login_view.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/services/shared_prefrences_singleton.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/features/on_boarding/ui/views/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    executeNavigation();
  }

  void executeNavigation() {
    bool isSeen = Prefs.getBool(kIsOnBoardingViewSeen);
    Future.delayed(
      const Duration(seconds: 3),
      () {
        if (mounted) {
          if (isSeen) {
            Navigator.pushReplacementNamed(context, LoginView.routeName);
          } else {
            Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(Assets.imagesPlant),
          ],
        ),
        SvgPicture.asset(Assets.imagesLogo),
        SvgPicture.asset(
          Assets.imagesSplashBottom,
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}
