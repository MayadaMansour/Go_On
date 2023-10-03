import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_on/presentation/screens/profile/my_esims/esims/widget/cart_esmit.dart';
import 'package:go_on/presentation/screens/profile/my_esims/esims/widget/myEsimsContainer.dart';
import '../../../../../../utils/color_resource/color_resources.dart';
import '../../../../../../utils/constants/app_constants.dart';
import '../../../../../cubits/home/home_cubit.dart';
import '../../../../../cubits/profile/profile_cubit.dart';
import '../../../../../widgets/appBar/custom_app_bar.dart';
import '../../../../../widgets/text/custom_text.dart';
import 'current_screen.dart';
import 'expired_screen.dart';
import '../myEsimsCubit/myEsimsCubit.dart';
import '../myEsimsCubit/myEsimsState.dart';

class MyEsimsScreen extends StatefulWidget {
  const MyEsimsScreen({super.key});

  @override
  State<MyEsimsScreen> createState() => _myEsimsScreen();
}

class _myEsimsScreen extends State<MyEsimsScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EsimsCubit, MyEsimsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Column(
                children: [
                  const CustomAppBar(text: 'My Esims'),
                  AppConstants.gap20,
                  AppConstants.gap20,
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Row(
                      children: [
                        MyEsimsContainer(
                            onTap: () {
                              EsimsCubit.get(context).change('Current');
                            },
                            text: 'Current',
                            isSelected:
                            EsimsCubit
                                .get(context)
                                .select['Current']),
                        SizedBox(
                          width: 20,
                        ),
                        MyEsimsContainer(
                            onTap: () {
                              EsimsCubit.get(context).change('Expaired');
                            },
                            text: 'Expaired',
                            isSelected:
                            EsimsCubit
                                .get(context)
                                .select['Expaired']),
                      ],
                    ),
                  ),
                  if (EsimsCubit
                      .get(context)
                      .select['Current'] == true)
                    const Current(),
                  if (EsimsCubit
                      .get(context)
                      .select['Expaired'] == true)
                    const Expired(),
                  AppConstants.gap20,
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: CartEsmit(
                       title: 'Asia,30 Days,3 GB',),
                  ),
                ],
            ),
          ),
        );
      },
    );
  }
}
