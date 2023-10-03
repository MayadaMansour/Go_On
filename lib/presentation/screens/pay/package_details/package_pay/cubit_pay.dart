import 'package:flutter_bloc/flutter_bloc.dart';

import 'pay_state.dart';

class PackageCubit extends Cubit<PackageState> {
  PackageCubit() : super(PackageInitial());
  static PackageCubit get(context)=>BlocProvider.of(context);



}
