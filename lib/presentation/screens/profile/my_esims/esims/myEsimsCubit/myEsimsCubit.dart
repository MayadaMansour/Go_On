import 'package:flutter_bloc/flutter_bloc.dart';

import 'myEsimsState.dart';

class EsimsCubit extends Cubit<MyEsimsState> {
  EsimsCubit() : super(EsimsInitial());

  static EsimsCubit get(context)=>BlocProvider.of(context);


  /// Countries
  Map<String,bool>select={
    'Current':true,
    'Expired':false,
  };
  change(String key){
    select={
      'Current':true,
      'Expired':false,
    };
    select[key]=!select[key]!;
    emit(ChangeButtom());
  }

}
