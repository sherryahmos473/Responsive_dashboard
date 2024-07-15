import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/constants.dart';
import 'package:responsive_dashboard/widgets/custom_button.dart';
import 'package:responsive_dashboard/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextField(
              title: 'Customer name',
              hint: 'Type customer name',
            )),
            SizedBox(width: 16),
            Expanded(
                child: TitleTextField(
              title: 'Customer Email',
              hint: 'Type customer email',
            )),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
                child: TitleTextField(
              title: 'Item name',
              hint: 'Type item name',
            )),
            SizedBox(width: 16),
            Expanded(
                child: TitleTextField(
              title: 'Item Count',
              hint: 'USD',
            )),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
                child: CustomButton(
                  text: 'Add more details',
              backgroundColor: Colors.white,
              textColor: primaryColor,
            )),
            SizedBox(width: 24),
            Expanded(
                child: CustomButton(
                  text: 'Send Money',
              backgroundColor: primaryColor,
              textColor: Colors.white,
            )),
          ],
        ),
      ],
    );
  }
}
