import 'package:flutter/material.dart';
import 'package:go_on/presentation/screens/profile/account/account_screen.dart';
import 'package:go_on/presentation/screens/profile/my_esims/esims_details/esims_details_screen/esims_details.dart';
import 'package:go_on/presentation/screens/profile/my_wallet/mywallet_screen/wallet_screen.dart';
import 'package:go_on/presentation/screens/profile/widgets/profile_container.dart';
import 'package:go_on/presentation/screens/profile/widgets/profile_details.dart';
import 'package:go_on/presentation/widgets/appBar/custom_app_bar.dart';
import 'package:go_on/utils/constants/app_constants.dart';

import '../../../utils/images/images.dart';

import 'faqs/main_faqs_screen/faqs_screen/screen_faqs.dart';
import 'my_esims/esims/esims_screen/esims_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const CustomAppBar(text: 'PROFILE',isHome: true,),
              const ProfileDetails(name: 'Christin raafat', email: 'Chriss@gmail.com'),
              AppConstants.gap20,
              ProfileContainer(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AccountScreen(),));
                  },
                  text: 'Account Settings', icon: Images.profile),
              AppConstants.gap10,
              ProfileContainer(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const MyEsimsScreen(),));
                  },
                  text: 'My Esims', icon: Images.esims),
              AppConstants.gap10,
               ProfileContainer(text: 'Contacts', icon: Images.contacts),
              AppConstants.gap10,
              ProfileContainer(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>const WalletScreen(),));
                  },
                  text: 'My Wallet', icon: Images.wallet),
              AppConstants.gap10,
              ProfileContainer(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>const FAQsScreen(),));
                  },
                  text: 'FAQs', icon: Images.faq),
              AppConstants.gap10,
              const ProfileContainer(text: 'Language', icon: Images.lang),
              AppConstants.gap10,
              const ProfileContainer(text: 'Sign out', icon: Images.signOut),
              AppConstants.gap10,
            ],
          ),
        ),
      ),
    );
  }
}
