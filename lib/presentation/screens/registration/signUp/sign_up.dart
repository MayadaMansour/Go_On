import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_on/presentation/screens/registration/signUp/sign_up_screen.dart';
import 'package:go_on/presentation/screens/registration/signUp/widgets/sign_up_view.dart';
import 'package:go_on/presentation/widgets/button/custom_button.dart';
import 'package:go_on/presentation/widgets/text/custom_text.dart';
import 'package:go_on/utils/color_resource/color_resources.dart';
import 'package:go_on/utils/constants/app_constants.dart';
import 'package:go_on/utils/images/images.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                   const SignUpView(),
                   CustomButton(
                     onTap: (){
                       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignUpScreen(),));
                     },
                     text: 'SIGN UP WITH EMAIL',color: ColorResources.primary,colorTxt: ColorResources.white,icon:SvgPicture.asset(Images.email),),
                   AppConstants.gap20,
                   CustomButton(
                     onTap: (){
                       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignUpScreen(),));
                     },
                     text: 'SIGN UP WITH APPLE',color: ColorResources.black,colorTxt: ColorResources.white,icon:SvgPicture.asset(Images.apple),),
                  AppConstants.gap20,
                  SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(text: 'Joined before?',txtSize: 15,color: ColorResources.grey),
                      AppConstants.gapW5,
                      CustomText(text: 'Sign in',txtSize: 15,color: ColorResources.black),
                    ],
                  ),
                  AppConstants.gap20,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}