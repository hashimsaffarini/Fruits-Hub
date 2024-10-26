import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/active_item.dart';
import 'package:fruits_hub/core/widgets/in_active_item.dart';
import 'package:fruits_hub/features/home/domain/entites/bottom_navigation_bar_entity.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    super.key,
    required this.isSelected,
    required this.bottomNavigationBarEntity,
  });
  final bool isSelected;
  final BottomNavigationBarEntity bottomNavigationBarEntity;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveItem(
            image: bottomNavigationBarEntity.activeImage,
            text: bottomNavigationBarEntity.name,
          )
        : InActiveItem(
            image: bottomNavigationBarEntity.inActiveImage,
          );
  }
}
