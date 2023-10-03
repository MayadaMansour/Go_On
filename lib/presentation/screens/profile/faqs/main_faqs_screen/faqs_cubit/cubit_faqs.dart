import 'package:flutter_bloc/flutter_bloc.dart';

import 'faqs_state.dart';

class FAQSCubit extends Cubit<FAQsState> {
  FAQSCubit() : super(FAQsInitial());

  static FAQSCubit get(context)=>BlocProvider.of(context);



}
