part of 'favourite_bloc.dart';

sealed class FavouriteState {}

final class FavouriteInitial extends FavouriteState {}

final class FavouriteSuccessState extends FavouriteState {
  final List<MyTasks> taskItems;

  FavouriteSuccessState({required this.taskItems});

}
