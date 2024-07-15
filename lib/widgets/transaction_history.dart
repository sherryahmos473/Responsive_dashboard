import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/utils/constants.dart';
import 'package:responsive_dashboard/widgets/transaction_history_listview.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Text('Transaction History', style: AppStyles.styleSemiBold20(context)),
            Text('See all',
                style: AppStyles.styleMedium16(context).copyWith(color: primaryColor)),
          ],
        ),
        const SizedBox(height: 20),
        Text('13 April 2022',
            style: AppStyles.styleMedium16(context)
                .copyWith(color: const Color(0xffAAAAAA))),
        const TransactionHistoryListView(),
      ],
    );
  }
}
