import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_on/presentation/widgets/text/custom_text.dart';
import 'package:go_on/utils/color_resource/color_resources.dart';
import 'package:go_on/utils/constants/app_constants.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({super.key, required this.text, required this.icon, this.onTap});

  final String text;
  final String icon;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              SvgPicture.asset(icon,color: ColorResources.primary),
              AppConstants.gapW10,
              CustomText(text: text,txtSize: 18),
              const Spacer(),
              Icon(Icons.arrow_forward_ios,color: ColorResources.black,size: 15,)
            ],
          ),
        ),
      ),
    );
  }
}
