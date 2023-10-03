import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import '../../../../utils/color_resource/color_resources.dart';
import '../../../widgets/text/custom_text.dart';

class HomeFlags extends StatelessWidget {
  const HomeFlags({super.key, required this.countryCode, required this.country, required this.onTap});

  final String countryCode;
  final String country;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          CountryFlag.fromCountryCode(
            countryCode,
            height: 50,
            width: 50,
            borderRadius: 55,
          ),
          CustomText(text: country,txtSize: 15,color: ColorResources.grey),
        ],
      ),
    );
  }
}
