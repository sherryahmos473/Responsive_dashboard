import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/expensses_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/utils/constants.dart';
import 'package:responsive_dashboard/widgets/expensses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.itemModel,
    this.isActive = false,
  });

  final ExpenssesItemModel itemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final backgroundColor = isActive ? primaryColor : Colors.white;
    final textColor = isActive ? Colors.white : secondaryColor;
    final borderSide = BorderSide(
        width: 1, color: isActive ? primaryColor : const Color(0xffF1F1F1));

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: borderSide,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpenssesItemHeader(
              image: itemModel.image,
              imageColor: isActive ? Colors.white : null),
          const SizedBox(height: 34),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(itemModel.name,
                style: AppStyles.styleSemiBold16(context)
                    .copyWith(color: textColor)),
          ),
          const SizedBox(height: 8),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(itemModel.date,
                style: AppStyles.styleRegular14(context).copyWith(
                    color: isActive ? const Color(0xffFAFAFA) : textColor)),
          ),
          const SizedBox(height: 16),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(itemModel.price,
                style: AppStyles.styleSemiBold24(context)
                    .copyWith(color: textColor)),
          ),
        ],
      ),
    );
  }
}
