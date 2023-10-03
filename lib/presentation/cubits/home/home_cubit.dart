import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_on/presentation/screens/pay/package_details/pay_wallet/wallet.dart';
import 'package:meta/meta.dart';

import '../../../core/data/local/cache_helper.dart';
import '../../screens/home/home_screen.dart';
import '../../screens/pay/details/pay_screen/pay_screen.dart';
import '../../screens/profile/profile_screen.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context)=>BlocProvider.of(context);

/// Screens

  List screens=[
    const HomeScreen(),
    const WalletPayment(),
    const ProfileScreen(),

  ];

  int currentIndex=0;
  changeScreen(index){
    currentIndex=index;
    emit(ChangeScreen());
  }



  /// Countries

  List<Map<String,String>> countries=[
    { 'Saudi Arabia': 'SA',},
    {'Egypt': 'EG',},
    {'Algeria': 'DZ'},
    {'Andorra': 'AD'},
    { 'Australia': 'AU'}
  ];


  Map<String,bool>select={
    'Country':true,
    'Regional':false,
    'Calls':false,
  };
  change(String key){
    select={
      'Country':false,
      'Regional':false,
      'Calls':false,
    };
    select[key]=!select[key]!;
    emit(Change());
  }


// /// Change Mode
//
//   bool isDark = false;
//   void changeAppMode({required bool fromShared})
//   {
//     if(fromShared != null){
//       isDark=fromShared;
//       emit(NewsChangeMode());
//     }else{
//       isDark = !isDark;
//       CacheHelper.putBoolean(key: "isDark", value: isDark).then((value) {
//         emit(NewsChangeMode());
//       });
//     }
//   }

}
