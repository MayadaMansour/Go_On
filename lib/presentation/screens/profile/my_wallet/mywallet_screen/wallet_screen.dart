import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_on/presentation/screens/profile/my_esims/esims_details/widget/cart_details.dart';

import '../../../../../utils/color_resource/color_resources.dart';
import '../../../../../utils/constants/app_constants.dart';
import '../../../../../utils/images/images.dart';
import '../../../../widgets/text/custom_text.dart';
import '../wallet_cubit/cubit_wallet.dart';
import '../wallet_cubit/wallet_state.dart';
import 'package:flutter/cupertino.dart';

import '../widget/cart_container.dart';
import '../widget/cart_wallet.dart';
import '../widget/credite_cart.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WalletCubit, WalletState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
              child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    CartWallet(),
                    AppConstants.gap10,
                    Container(
                      alignment: Alignment.topLeft,
                      child: CustomText(
                        text: 'My saved cards',
                        txtSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    AppConstants.gap15,
                    CrediteCart(
                      cardholderName: 'Ahmed salam ali',
                      expireDate: '08/2023',
                      cVC: '175',
                      creditNum: '****  ****  ****  1234',
                    ),
                    AppConstants.gap20,
                    Container(
                      alignment: Alignment.topLeft,
                      child: CustomText(
                        text: 'Transaction History',
                        txtSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    AppConstants.gap15,
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      // width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Expanded(
                            child: ListView.builder(
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                return CrediteContainer(iconWallet: Icons.add);
                              },
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.55,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
        );
      },
    );
  }
}
