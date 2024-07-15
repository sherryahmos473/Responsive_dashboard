import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/item_details_model.dart';
import 'package:responsive_dashboard/widgets/detials_item.dart';

class IncomeDetials extends StatelessWidget {
  const IncomeDetials({super.key});
  static List<ItemDetailsModel> items = [
    ItemDetailsModel(
        title: 'Design service', value: '40%', color: const Color(0xff208CC8)),
    ItemDetailsModel(
        title: 'Design product', value: '25%', color: const Color(0xff4EB7F2)),
    ItemDetailsModel(
        title: 'Product royalti', value: '20%', color: const Color(0xff064061)),
    ItemDetailsModel(
        title: 'Other', value: '22%', color: const Color(0xffE2DECD)),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => DetialsItem(itemDetailsModel: e)).toList(),
    );
  }
}
