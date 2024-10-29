import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/build_app_bar.dart';
import 'package:fruits_hub/features/best_selling_fruits/ui/views/widgets/best_selling_view_body.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});
  static const String routeName = 'best-selling-view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppBar(),
      body: const BestSellingViewBody(),
    );
  }
}
