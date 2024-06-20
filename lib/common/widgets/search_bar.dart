import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DSearchContainer extends StatelessWidget {
  const DSearchContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: TDeviceUtils.getScreenWidth(context),
      padding: const EdgeInsets.all(TSizes.md),
      decoration: BoxDecoration(
        color: DColors.tertiary,
        borderRadius: BorderRadius.circular(32),
        border: Border.all(
          color: Colors.grey.shade200,
        ),
      ),
      child: Row(
        children: [
          const Icon(
            Iconsax.search_normal,
            color: Colors.grey,
          ),
          const SizedBox(width: TSizes.spaceBtwSections),
          Text(
            'Search',
            style: TextStyle(
              fontSize: 15.0,
              fontFamily: 'Poppins',
            ),
          )
        ],
      ),
    );
  }
}
