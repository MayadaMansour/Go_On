import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_on/presentation/cubits/profile/profile_cubit.dart';
import 'package:go_on/presentation/widgets/appBar/custom_app_bar.dart';
import 'package:go_on/utils/constants/app_constants.dart';
import 'package:go_on/utils/images/images.dart';
import '../../../../utils/color_resource/color_resources.dart';
import '../../../widgets/textFeild/custom_text_field.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    dynamic fileImage=ProfileCubit.get(context).fileImage;
    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                const CustomAppBar(text: 'Account'),
                AppConstants.gap20,
                AppConstants.gap20,
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: 55,
                      backgroundImage:fileImage != null ? FileImage(fileImage) as ImageProvider
                          : const AssetImage(Images.profilePec),
                    ),
                    InkWell(
                      onTap: (){
                        ProfileCubit.get(context).getUserProfileImage();
                      },
                      child: Card(shape: const CircleBorder(),child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: SvgPicture.asset(Images.addImg),
                      )),
                    ),
                  ],
                ),
                AppConstants.gap20,
                CustomTextField(
                  hintText: 'Christin',
                  readOnly: true,
                  hintColor: ColorResources.hintText,
                  isRegister: true,
                  prefix: Padding(
                    padding: const EdgeInsets.all(12),
                    child: SvgPicture.asset(Images.profile,color: ColorResources.hintText),
                  ),
                ),
                AppConstants.gap20,
                CustomTextField(
                  hintText: 'Chriss@gmail.com',
                  readOnly: true,
                  hintColor: ColorResources.hintText,
                  isRegister: true,
                  prefix: Padding(
                    padding: const EdgeInsets.all(12),
                    child: SvgPicture.asset(Images.emailAt,color: ColorResources.hintText),
                  ),
                ),
                AppConstants.gap20,
                CustomTextField(
                  hintText: '********',
                  readOnly: true,
                  hintColor: ColorResources.hintText,
                  isRegister: true,
                  prefix: Padding(
                    padding: const EdgeInsets.all(12),
                    child: SvgPicture.asset(Images.lock,color: ColorResources.hintText),
                  ),
                ),
                AppConstants.gap20,
                CustomTextField(
                  hintText: '01020460470',
                  readOnly: true,
                  hintColor: ColorResources.hintText,
                  isRegister: true,
                  prefix: Padding(
                    padding: const EdgeInsets.all(12),
                    child: SvgPicture.asset(Images.phone,color: ColorResources.hintText),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
