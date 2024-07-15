import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/models/expensses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/inactive_all_expensess_item.dart';

class AllExpenssesItemsListview extends StatefulWidget {
  const AllExpenssesItemsListview({super.key});

  @override
  State<AllExpenssesItemsListview> createState() =>
      _AllExpenssesItemsListviewState();
}

class _AllExpenssesItemsListviewState extends State<AllExpenssesItemsListview> {
  final items = [
    ExpenssesItemModel(
        image: Assets.imagesBalance,
        price: r'$20,129',
        date: 'April 2022',
        name: 'Balance'),
    ExpenssesItemModel(
        image: Assets.imagesIncome,
        price: r'$20,129',
        date: 'April 2022',
        name: 'Income'),
    ExpenssesItemModel(
        image: Assets.imagesExpenses,
        price: r'$20,129',
        date: 'April 2022',
        name: 'Expenses'),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItem(
                itemModel: items[0], isActive: selectedIndex == 0),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensesItem(
                itemModel: items[1], isActive: selectedIndex == 1),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensesItem(
                itemModel: items[2], isActive: selectedIndex == 2),
          ),
        ),
      ],
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
