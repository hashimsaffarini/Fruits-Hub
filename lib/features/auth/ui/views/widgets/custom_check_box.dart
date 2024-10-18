import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({super.key, required this.isChecked, required this.onChanged});
  final bool isChecked;
  final ValueChanged<bool> onChanged;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!isChecked);
      },
      child: AnimatedContainer(
        width: 24,
        height: 24,
        duration: const Duration(milliseconds: 150),
        decoration: BoxDecoration(
          color: isChecked ? AppColors.primaryColor : Colors.white,
          border: Border.all(
            color: isChecked ? Colors.transparent : const Color(0xFFDCDEDE),
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: isChecked
            ? Padding(
                padding: const EdgeInsets.all(1.5),
                child: SvgPicture.asset(
                  Assets.imagesCheck,
                ),
              )
            : null,
      ),
    );
  }
}
