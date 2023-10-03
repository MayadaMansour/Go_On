import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../utils/color_resource/color_resources.dart';
import '../../../utils/images/images.dart';
import '../../cubits/home/home_cubit.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
              onTap: (value) {
                HomeCubit.get(context).changeScreen(value);
              },
              currentIndex: HomeCubit.get(context).currentIndex,
              backgroundColor: ColorResources.white,
                selectedItemColor: ColorResources.primary,
                unselectedItemColor:Colors.black38,
              items: [
              BottomNavigationBarItem(icon: Icon(Icons.home_filled,size: 28,),label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.money,size: 28,),label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.person,size: 28,),label: ''),
            ],
          ),

          body: HomeCubit.get(context).screens[HomeCubit.get(context).currentIndex]

        );
      },
    );
  }
}


