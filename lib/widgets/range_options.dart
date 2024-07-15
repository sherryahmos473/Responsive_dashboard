import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1, color: const Color(0xffF1F1F1))),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Text(
              'Monthly',
              style: AppStyles.styleMedium16(context),
            ),
            const SizedBox(width: 18),
            SvgPicture.asset(Assets.imagesArrowDown),
          ],
        ),
      ),
    );
  }
}
