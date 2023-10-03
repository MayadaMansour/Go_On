import 'package:flutter/material.dart';
import 'package:go_on/presentation/widgets/text/custom_text.dart';
import 'package:go_on/utils/constants/app_constants.dart';

import '../../../../utils/images/images.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key, required this.name, required this.email});

  final String name;
  final String email;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(Images.profilePec),
        ),
        Column(
          children: [
            CustomText(text: name,txtSize: 16,fontWeight: FontWeight.w600),
            AppConstants.gap5,
            CustomText(text: email,txtSize: 12),
          ],
        )
      ],
    );
  }
}
