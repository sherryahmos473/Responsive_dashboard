import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/range_options.dart';

class AllExpenssesHeader extends StatelessWidget {
  const AllExpenssesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('All Expenses', style: AppStyles.styleSemiBold20(context)),
        const Expanded(child: SizedBox()),
        const RangeOptions(),
      ],
    );
  }
}
