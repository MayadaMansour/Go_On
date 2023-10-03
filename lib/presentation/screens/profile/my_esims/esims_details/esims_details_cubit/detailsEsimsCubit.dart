import 'package:flutter_bloc/flutter_bloc.dart';

import 'detailsEsimsState.dart';

class EsimsDetailsCubit extends Cubit<EsimsDetailsState> {
  EsimsDetailsCubit() : super(EsimsInitial());
  static EsimsDetailsCubit get(context)=>BlocProvider.of(context);


}
