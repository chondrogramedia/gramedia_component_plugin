import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';

part 'SearchState.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(InitialState());

  void setPageNavigation(int page) {
    try {
      emit(LoadingState());
      navigation(page);
    } catch (e) {
      emit(FailedNavigationState());
    }
  }

  void navigation(int page) {
    switch (page) {
      case 0:
        emit(InitialState());
      case 1:
        emit(SearchingViewState());
      case 2:
        emit(SearchingViewResultState());
      default:
        print("Navigation");
    }
  }
}
