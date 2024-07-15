import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expensses_header.dart';
import 'package:responsive_dashboard/widgets/all_expensses_items_listview.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';

class AllExpensses extends StatelessWidget {
  const AllExpensses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 20,
      child: Column(
        children: [
          AllExpenssesHeader(),
          SizedBox(height: 16),
          AllExpenssesItemsListview(),
        ],
      ),
    );
  }
}
