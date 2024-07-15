import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/my_cards_section.dart';
import 'package:responsive_dashboard/widgets/transaction_history.dart';

class MyCardAndTransactionHistory extends StatelessWidget {
  const MyCardAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 40,
        ),
        CustomBackgroundContainer(
          padding: 24,
          child: Column(
            children: [
              MyCardsSection(),
              Divider(
                color: Color(0xffF1F1F1),
                height: 40,
                thickness: 1,
              ),
              TransactionHistory(),
            ],
          ),
        ),
      ],
    );
  }
}
