import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_on/presentation/screens/profile/my_esims/esims_details/widget/cart_details.dart';
import '../../../../../../utils/circular_seek_bar/circular_seek.dart';
import '../../../../../../utils/constants/app_constants.dart';
import '../../../../../cubits/profile/profile_cubit.dart';
import '../../../../../widgets/container/custom_container.dart';
import '../../../../../widgets/text/custom_text.dart';
import '../esims_details_cubit/detailsEsimsCubit.dart';
import '../esims_details_cubit/detailsEsimsState.dart';
import '../widget/containrs.dart';
import '../widget/details_containr.dart';

class EsimsDetailsScreen extends StatefulWidget {
  const EsimsDetailsScreen({super.key});

  @override
  State<EsimsDetailsScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<EsimsDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EsimsDetailsCubit, EsimsDetailsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      CartDetails(),
                      AppConstants.gap10,
                      CustomText(
                        text: 'Esim Inastallation',
                        txtSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                      AppConstants.gap15,
                      EsimsDetailsContainer(
                        title: 'Install Esim',
                        width: 361,
                        hight: 50,
                        txtSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      AppConstants.gap15,
                      Stack(
                        children: [
                          EsimsDetailsContainer(
                            title: 'Data Usage',
                            width: 361,
                            hight: 230,
                            txtSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(50),
                            child: CircleBar(progressNum: 100),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 180),
                            child: Center(
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 8),
                                  child: Text(
                                    '4/20 Day left',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF656565),
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                width: 130,
                                height: 34,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFECF4FF),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      AppConstants.gap15,
                      Padding(
                        padding: const EdgeInsets.only(right: 187),
                        child: CustomText(
                          text: 'Related Packages',
                          txtSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      AppConstants.gap15,
                      SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: Column(
                          children: [
                            Expanded(
                              child: ListView.builder(
                                  itemBuilder: (context, index) =>  ListViewPackageContainer(
                                            price: '50',
                                            priceDays: '20',
                                            priceGiga: '3',
                                            dataDays: '20',
                                            dataGiga: '3',
                                            validityDays: '20',
                                            validityGiga: '3',
                                            isActive: index == 1 ? true : false),

                                  itemCount: 6),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
