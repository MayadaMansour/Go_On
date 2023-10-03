import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_on/presentation/screens/home/widgets/calls/calls.dart';
import 'package:go_on/presentation/screens/home/widgets/country/country.dart';
import 'package:go_on/presentation/screens/home/widgets/discountCountry/discount_country_screen.dart';
import 'package:go_on/presentation/screens/home/widgets/home_container.dart';
import 'package:go_on/presentation/screens/home/widgets/regional/regional.dart';
import 'package:go_on/presentation/widgets/appBar/custom_app_bar.dart';
import 'package:go_on/utils/constants/app_constants.dart';
import '../../../utils/color_resource/color_resources.dart';
import '../../../utils/images/images.dart';
import '../../cubits/home/home_cubit.dart';
import '../../widgets/text/custom_text.dart';
import '../../widgets/textFeild/custom_text_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return SafeArea(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomAppBar(text: '',isHome: true,),
                      CustomText(text: 'Joined before',txtSize: 16,color: ColorResources.grey),
                      AppConstants.gap10,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(text: '750\$',txtSize: 30,color: ColorResources.primary),
                          FloatingActionButton(onPressed: (){},mini: true,child: const Icon(Icons.add,size: 40),)
                        ],
                      ),
                      AppConstants.gap20,
                      const CustomTextField(
                        isRegister: true,
                        suffix: Padding(
                          padding: EdgeInsets.all(10),
                          child: Icon(Icons.search),
                        ),
                      ),
                      AppConstants.gap20,
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.25,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => InkWell(
                                onTap:(){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DiscountCountry(),));
                                },
                                child: const Image(image: AssetImage(Images.img1))),
                          itemCount: 3,
                        ),
                      ),
                      AppConstants.gap20,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          HomeContainer(onTap: (){
                            HomeCubit.get(context).change('Country');
                          },text: 'Country',isSelected: HomeCubit.get(context).select['Country']),
                          HomeContainer(onTap: (){
                            HomeCubit.get(context).change('Regional');
                          },text: 'Regional',isSelected: HomeCubit.get(context).select['Regional']),
                          HomeContainer(onTap: (){
                            HomeCubit.get(context).change('Calls');
                          },text: 'Calls',isSelected: HomeCubit.get(context).select['Calls']),
                        ],
                      ),
                      if(HomeCubit.get(context).select['Country']==true)
                      const County(),
                      if(HomeCubit.get(context).select['Regional']==true)
                        const Regional(),
                      if(HomeCubit.get(context).select['Calls']==true)
                        const Calls()
                    ],
                  ),
                ),
              ),
            )
        );
      },
    );
  }
}
