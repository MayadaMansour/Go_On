import 'package:flutter/material.dart';
import '../../../../../utils/color_resource/color_resources.dart';
import '../../../../../utils/constants/app_constants.dart';
import '../../../../../utils/images/images.dart';
import '../../../../widgets/text/custom_text.dart';
import '../home_flags.dart';
import '../home_image.dart';
import '../packageDetails/package_detailes_screen.dart';
import '../topDestination/details_screen.dart';

class County extends StatelessWidget {
  const County({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppConstants.gap20,
        AppConstants.gap10,
        CustomText(text: 'Top Destinations',txtSize: 16,fontWeight: FontWeight.w600,color: ColorResources.black2),
        AppConstants.gap20,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HomeImage(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const PackageDetails(
                            price: '50',
                            priceDays: '20',
                            country: 'Asia',
                            priceGiga: '3',
                            dataDays: '20',
                            dataGiga: '3',
                            validityDays: '20',
                            validityGiga: '3',
                            connectivity: '2G , 3G , 4G',
                            coverage: 'Review',
                            pricePackage: '30\$',
                            priceDaysPackage: 'Asia ,10',
                            dataGigaPackage: '3',
                            priceGigaPackage: '3',
                            validityDaysPackage: '10',

                        ),));
                      },
                      text: 'Australia', img: Images.australia) ,));
                },
                img: Images.australia, country: 'Australia'),
            HomeImage(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>const DetailsScreen(text: 'United State', img: Images.united) ,));
                },
                img: Images.unitedState, country: 'United State',isSelected: true),
            HomeImage(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>const DetailsScreen(text: 'Emirates', img: Images.emirates) ,));
                },
                img: Images.emirates, country: 'Emirates'),
          ],
        ),
        AppConstants.gap20,
        AppConstants.gap20,
        CustomText(text: 'Top Countries',txtSize: 16,fontWeight: FontWeight.w600,color: ColorResources.black2),
        AppConstants.gap10,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HomeFlags(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailsScreen(text: 'Saudi Arabia',),));
              },
              country:'Saudi Arabia',countryCode:'SA',),
            HomeFlags(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailsScreen(text: 'Egypt',),));
            },country: 'Egypt',countryCode:'EG',),
            HomeFlags(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailsScreen(text: 'United Sate',),));

            },country: 'United Sate',countryCode:'US',)
          ],
        ),
        AppConstants.gap20,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HomeFlags(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailsScreen(text: 'Algeria',),));
                },country: 'Algeria',countryCode:'DZ',),
            HomeFlags(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailsScreen(text: 'Andorra',),));
              },country: 'Andorra',countryCode:'AD',),
            HomeFlags(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailsScreen(text: 'Australia',),));
              },country: 'Australia',countryCode:'AU',)
          ],
        )
      ],
    );
  }
}
