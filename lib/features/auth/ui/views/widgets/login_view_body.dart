import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruits_hub/features/auth/ui/views/widgets/dont_have_an_account.dart';
import 'package:fruits_hub/core/widgets/or_divider.dart';
import 'package:fruits_hub/features/auth/ui/views/widgets/social_login_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 24),
            const CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            const CustomTextFormField(
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: Color(0xffc9cecf),
              ),
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'نسيت كلمة المرور؟',
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 33),
            CustomButton(
              onPressed: () {},
              text: 'تسجيل الدخول',
            ),
            const SizedBox(height: 33),
            const DontHaveAnAccount(),
            const SizedBox(height: 33),
            const OrDivider(),
            const SizedBox(
              height: 16,
            ),
            SocialLoginButton(
              onPressed: () {},
              title: 'تسجيل الدخول بواسطة جوجل',
              image: Assets.imagesGoogleIcon,
            ),
            const SizedBox(
              height: 16,
            ),
            SocialLoginButton(
              onPressed: () {},
              title: 'تسجيل الدخول بواسطة أبل',
              image: Assets.imagesApplIcon,
            ),
            const SizedBox(
              height: 16,
            ),
            SocialLoginButton(
              onPressed: () {},
              title: 'تسجيل الدخول بواسطة فيسبوك',
              image: Assets.imagesFacebookIcon,
            ),
          ],
        ),
      ),
    );
  }
}
