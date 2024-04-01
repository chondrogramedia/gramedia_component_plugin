part of 'SearchCubit.dart';

abstract class SearchState extends Equatable {
  const SearchState();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class InitialState extends SearchState {}

class LoadingState extends SearchState {}

class SearchingViewState extends SearchState {}

class SearchingViewResultState extends SearchState {}

class FailedNavigationState extends SearchState {}
