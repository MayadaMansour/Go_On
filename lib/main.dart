import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_on/presentation/cubits/home/home_cubit.dart';
import 'package:go_on/presentation/cubits/profile/profile_cubit.dart';
import 'package:go_on/presentation/screens/home/home.dart';
import 'package:go_on/presentation/screens/pay/details/cubit_pay/cubit_pay.dart';
import 'package:go_on/presentation/screens/pay/package_details/package_pay/cubit_pay.dart';
import 'package:go_on/presentation/screens/profile/faqs/main_faqs_screen/faqs_cubit/cubit_faqs.dart';
import 'package:go_on/presentation/screens/profile/my_esims/esims/myEsimsCubit/myEsimsCubit.dart';
import 'package:go_on/presentation/screens/profile/my_esims/esims_details/esims_details_cubit/detailsEsimsCubit.dart';
import 'package:go_on/presentation/screens/profile/my_wallet/wallet_cubit/cubit_wallet.dart';
import 'package:go_on/utils/theme/theme.dart';
import 'package:device_preview/device_preview.dart';

import 'core/data/local/cache_helper.dart';
import 'core/data/remote/dio_helper.dart';

Future<void> main()  async {

  // WidgetsFlutterBinding.ensureInitialized();
  // DioHelper.init();
  // await CacheHelper.init();
  // bool isDark =CacheHelper.getBoolean(key: "isDark")?false:true;

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeCubit(),),
        BlocProvider(create: (context) => ProfileCubit(),),
        BlocProvider(create: (context) => EsimsCubit(),),
        BlocProvider(create: (context) => EsimsDetailsCubit(),),
        BlocProvider(create: (context) => WalletCubit(),),
        BlocProvider(create: (context) => FAQSCubit(),),
        BlocProvider(create: (context) => PayCubit(),),
        BlocProvider(create: (context) => PackageCubit(),),
        // BlocProvider(create: (context)=>HomeCubit()..changeAppMode(fromShared: isDark),)
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp( {super.key});
  // final  bool? isDark;


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 855),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (overscroll) {
              overscroll.disallowIndicator();
              return true;
            },
            child: DevicePreview(
              tools: [
                  ...DevicePreview.defaultTools,
                ],
              enabled: true,
              builder: (BuildContext context) {
                return  MaterialApp(
                  useInheritedMediaQuery: true,
                  builder: DevicePreview.appBuilder,
                  showSemanticsDebugger: false,
                  theme: themeData,
                  debugShowCheckedModeBanner: false,
                  // themeMode: HomeCubit.get(context).isDark ? ThemeMode.dark: ThemeMode.light,
                  home:  Home(),
                );
            },

            ),
          );
        }
    );
  }
}



