import 'package:flutter/material.dart';
import 'package:go_on/presentation/screens/home/widgets/regional/regional_container.dart';
import 'package:go_on/utils/constants/app_constants.dart';
import 'package:go_on/utils/constants/listView_gap.dart';
import 'package:go_on/utils/images/images.dart';
import '../packageDetails/package_detailes_screen.dart';
import '../topDestination/details_screen.dart';

class Regional extends StatelessWidget {
  const Regional({super.key});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.5,
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) => InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => PackageDetails(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailsScreen(text: 'Asia',img:Images.europe,isRegional: true,isDetails: true),));
                            },
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
                        text: 'Europe', img:  Images.europe,isRegional: true,)
                      ));
                    },
                    child: RegionalContainer(text: 'Europe', img: Images.europe,isSelected: index==1?true:false)),
                separatorBuilder: (context, index) => AppConstants.gap10,
                itemCount: 6
            ),
          ),
          // const ListViewGap()
        ],
      ),
    );
  }
}
