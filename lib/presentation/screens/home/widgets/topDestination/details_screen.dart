import 'package:flutter/material.dart';
import 'package:go_on/presentation/widgets/appBar/custom_app_bar.dart';
import 'package:go_on/utils/constants/app_constants.dart';
import '../../../../../utils/color_resource/color_resources.dart';
import '../../../../widgets/button/custom_button.dart';
import '../../../../widgets/container/custom_container.dart';


class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.text, this.img, this.onTap, this.isRegional, this.isDetails});

  final String text;
  final String? img;
  final Function()? onTap;
  final bool? isRegional;
  final bool? isDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                CustomAppBar(text: text,isHelp: isDetails==true?false:true),
                if(img!=null)
                SizedBox(height: 170,child: Image(image: AssetImage(img!),fit: BoxFit.cover,color: ColorResources.primary,)),
                AppConstants.gap20,
                Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) =>
                          InkWell(
                        onTap: onTap,
                        child: CustomContainer(
                            price: '50',
                            priceDays: '20',
                            priceGiga: '3',
                            dataDays: '20',
                            dataGiga: '3',
                            validityDays: '20',
                            validityGiga: '3',
                            isActive: index==1?true:false
                        ),
                      ),
                      separatorBuilder: (context, index) => AppConstants.gap10,
                      itemCount: 6
                  ),
                ),
                AppConstants.gap10,
                isRegional==true?AppConstants.noGap:
                CustomButton(
                    onTap: (){},
                    text: 'CHECKOUT \$15',color: ColorResources.grey2,colorTxt: ColorResources.white,isSelected: true),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
