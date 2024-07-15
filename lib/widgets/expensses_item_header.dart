import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/constants.dart';

class ExpenssesItemHeader extends StatelessWidget {
  const ExpenssesItemHeader({super.key, required this.image, this.imageColor});
  final Color? imageColor;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 60, maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                  decoration: ShapeDecoration(
                    color: Colors.white.withOpacity(0.1),
                    shape: const OvalBorder(),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      image,
                      colorFilter: ColorFilter.mode(
                          imageColor ?? primaryColor, BlendMode.srcIn),
                    ),
                  )),
            ),
          ),
        ),
        const Spacer(),
        SvgPicture.asset(
          Assets.imagesArrowRightBlack,
          colorFilter:
              ColorFilter.mode(imageColor ?? primaryColor, BlendMode.srcIn),
        ),
      ],
    );
  }
}
