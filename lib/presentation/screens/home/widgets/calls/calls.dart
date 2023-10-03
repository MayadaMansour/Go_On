import 'package:flutter/material.dart';
import 'package:go_on/utils/constants/app_constants.dart';
import '../../../../../utils/constants/listView_gap.dart';
import '../../../../widgets/container/custom_container.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) => const CustomContainer(
                    price: '50',
                    priceDays: '20',
                    priceGiga: '3',
                    dataDays: '20',
                    dataGiga: '3',
                    validityDays: '20',
                    validityGiga: '3',
                    minutes: 'UnLimited',
                    sms: 'UnLimited',
                    connectivity: '2G , 3G , 4G',
                    country: 'United State'
                ),
                separatorBuilder: (context, index) => AppConstants.gap10,
                itemCount: 6
            ),
          ),
        SizedBox(height: MediaQuery.of(context).size.height*0.55,)
        ],
      ),
    );
  }
}
