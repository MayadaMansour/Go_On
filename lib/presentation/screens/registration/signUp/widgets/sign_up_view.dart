import 'package:flutter/material.dart';
import '../../../../../utils/constants/app_constants.dart';
import '../../../../../utils/images/images.dart';
import '../../../../widgets/text/custom_text.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 20,),
        CustomText(text: 'Sign Up',txtSize: 16,fontWeight: FontWeight.w600),
        SizedBox(height: 20,),
        Image(image: AssetImage(Images.signUpImg),),
        AppConstants.gap20,
        AppConstants.gap20,
      ],
    );
  }
}
