import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/utils/constants.dart';

class QuickInvoiceheader extends StatelessWidget {
  const QuickInvoiceheader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Quick Invoice', style: AppStyles.styleSemiBold20(context)),
        const Spacer(),
        Container(
            width: 48,
            height: 48,
            decoration: const ShapeDecoration(
              color: Color(0xfffAFAFA),
              shape: OvalBorder(),
            ),
            child: const Icon(
              size: 18,
              CupertinoIcons.add,
              color: primaryColor,
            ))
      ],
    );
  }
}
