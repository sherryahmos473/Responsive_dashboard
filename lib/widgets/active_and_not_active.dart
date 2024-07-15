import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/utils/constants.dart';

class IsActive extends StatelessWidget {
  const IsActive({
    super.key,
    required this.item,
  });

  final DrawerItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: SvgPicture.asset(item.icon),
        title: FittedBox(
            alignment: AlignmentDirectional.centerStart,
            fit: BoxFit.scaleDown,
            child: Text(item.title, style: AppStyles.styleBold16(context))),
        trailing: Container(
          width: 3.27,
          decoration: const BoxDecoration(
            color: primaryColor,
          ),
        ));
  }
}

class NotActive extends StatelessWidget {
  const NotActive({
    super.key,
    required this.item,
  });

  final DrawerItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(item.icon),
      title: FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(item.title, style: AppStyles.styleMedium16(context))),
    );
  }
}
