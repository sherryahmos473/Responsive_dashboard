import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/widgets/all_expensess.dart';
import 'package:responsive_dashboard/widgets/quick_invoice.dart';

class AllExpenssesAndQuickInvoice extends StatelessWidget {
  const AllExpenssesAndQuickInvoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpensses(),
        SizedBox(height: 24),
        QuickInvoice(),
      ],
    );
  }
}
