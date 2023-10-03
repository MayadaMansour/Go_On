import 'package:flutter_bloc/flutter_bloc.dart';

import 'pay_state.dart';

class PayCubit extends Cubit<PayState> {
  PayCubit() : super(PayInitial());
  static PayCubit get(context)=>BlocProvider.of(context);



}
