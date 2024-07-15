import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/constants.dart';

class CustomDotindicator extends StatelessWidget {
  const CustomDotindicator({super.key, required this.active});

  final bool active;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
    width: active ? 32:8,
    height: 8,
    decoration: ShapeDecoration(
      color: active ? primaryColor : const Color(0xffE7E7E7) ,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)))
    
    );
  }
}