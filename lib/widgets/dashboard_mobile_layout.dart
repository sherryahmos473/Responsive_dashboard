import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expensses_and_quick_invoice.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_card_and_transaction_history.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpenssesAndQuickInvoice(),
          MyCardAndTransactionHistory(),
          SizedBox(height: 40),
          IncomeSection(),
        ],
      ),
    );
  }
}
