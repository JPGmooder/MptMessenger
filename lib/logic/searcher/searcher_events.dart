part of 'searcher_bloc.dart';

@freezed
class SearcherEvent with _$SearcherEvent {
  const factory SearcherEvent.searchByTag(String tag) = _$SearcherByTagEvent;
    const factory SearcherEvent.searchClean() = _$SearcherCleanEvent;

}
