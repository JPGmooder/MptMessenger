part of 'searcher_bloc.dart';
@freezed
class SearcherState with _$SearcherState 
{
  const factory SearcherState.initial() = _$SearcherInitialState;
    const factory SearcherState.loading() = _$SearcherLoadingState;
  const factory SearcherState.usersGot(List<AnotherUser> users) = _$SearcherUsersGotState;
  const factory SearcherState.usersEmpty() = _$SearcherUsersEmptyState;
  const factory SearcherState.errored() = _$SearcherErroredState;
}