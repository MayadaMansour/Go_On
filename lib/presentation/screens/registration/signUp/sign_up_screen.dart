import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_on/presentation/screens/home/home.dart';
import 'package:go_on/presentation/screens/registration/signUp/widgets/sign_up_view.dart';
import 'package:go_on/presentation/widgets/text/custom_text.dart';
import 'package:go_on/presentation/widgets/textFeild/custom_text_field.dart';
import 'package:go_on/utils/constants/app_constants.dart';
import '../../../../utils/color_resource/color_resources.dart';
import '../../../../utils/images/images.dart';
import '../../../widgets/button/custom_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SignUpView(),
                CustomTextField(
                  hintText: 'User name',
                  hintColor: ColorResources.hintText,
                  isRegister: true,
                  prefix: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SvgPicture.asset(Images.userEmail,color: ColorResources.hintText),
                  ),
                  suffix: Padding(
                    padding: const EdgeInsets.all(15),
                    child: CustomText(text: '0/16',color: ColorResources.hintText),
                  ),
                ),
                AppConstants.gap20,
                CustomTextField(
                  hintText: 'Email',
                  hintColor: ColorResources.hintText,
                  isRegister: true,
                  prefix: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SvgPicture.asset(Images.emailAt,color: ColorResources.hintText),
                  ),
                ),
                AppConstants.gap20,
                CustomTextField(
                  hintText: 'Password',
                  hintColor: ColorResources.hintText,
                  isRegister: true,
                  prefix: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SvgPicture.asset(Images.lock,color: ColorResources.hintText),
                  ),
                ),
                AppConstants.gap20,
                CustomTextField(
                  hintText: 'Phone number',
                  hintColor: ColorResources.hintText,
                  isRegister: true,
                  prefix: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SvgPicture.asset(Images.phone,color: ColorResources.hintText),
                  ),
                  suffix: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Image(image: AssetImage(Images.arrow)),
                  ),
                ),
                AppConstants.gap20,
                AppConstants.gap20,
                CustomButton(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Home(),));
                  },
                  text: 'SIGN UP',color: ColorResources.grey2,colorTxt: ColorResources.white,isSelected: false),
                AppConstants.gap20,
                // const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(text: 'Joined before?',txtSize: 15,color: ColorResources.grey),
                    AppConstants.gapW5,
                    CustomText(text: 'Sign in',txtSize: 15,color: ColorResources.black),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
