import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/notifications_widget.dart';

AppBar buildCustomAppBar() {
  return AppBar(
    actions: const [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: NotificationWidget(),
      ),
    ],
    backgroundColor: Colors.white,
    elevation: 0,
    title: const Text(
      'الأكثر مبيعًا',
      style: TextStyles.bold19,
    ),
  );
}
