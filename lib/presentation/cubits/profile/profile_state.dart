part of 'profile_cubit.dart';

@immutable
abstract class ProfileState {}

class ProfileInitial extends ProfileState {}

class ImagePickedSuccess extends ProfileState {}
class ImagePickedError extends ProfileState {}
