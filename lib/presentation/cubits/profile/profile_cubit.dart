import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(ProfileInitial());

 static ProfileCubit get(context)=>BlocProvider.of(context);

  final ImagePicker picker = ImagePicker();
  File? fileImage;

  Future<void> getUserProfileImage() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      fileImage = File(image.path);
      if (kDebugMode) {
        print('image selected');
      }
      emit(ImagePickedSuccess());
    } else {
      if (kDebugMode) {
        print('not image selected');
      }
      emit(ImagePickedError());
    }
  }

}
