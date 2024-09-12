import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:task/pages/tasks.dart';

part 'favourite_event.dart';
part 'favourite_state.dart';

List<MyTasks> taskItems = [];

class FavouriteBloc extends Bloc<FavouriteEvent, FavouriteState> {
  FavouriteBloc() : super(FavouriteInitial()) {
    on<FavouriteInitialEvent>(favouriteInitialEvent);
  }

  FutureOr<void> favouriteInitialEvent(
      FavouriteInitialEvent event, Emitter<FavouriteState> emit) {
    emit(FavouriteSuccessState(taskItems: taskItems));
  }
}
