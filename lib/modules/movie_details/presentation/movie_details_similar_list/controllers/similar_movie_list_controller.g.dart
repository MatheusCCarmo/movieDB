// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'similar_movie_list_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SimilarMovieListController on _SimilarMovieListController, Store {
  final _$stateAtom = Atom(name: '_SimilarMovieListController.state');

  @override
  SimilarMovieListState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(SimilarMovieListState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  final _$getSimilarMoviesByIdAsyncAction =
      AsyncAction('_SimilarMovieListController.getSimilarMoviesById');

  @override
  Future<List<SimilarMovie>> getSimilarMoviesById(int id) {
    return _$getSimilarMoviesByIdAsyncAction
        .run(() => super.getSimilarMoviesById(id));
  }

  final _$_SimilarMovieListControllerActionController =
      ActionController(name: '_SimilarMovieListController');

  @override
  dynamic setState(SimilarMovieListState newState) {
    final _$actionInfo = _$_SimilarMovieListControllerActionController
        .startAction(name: '_SimilarMovieListController.setState');
    try {
      return super.setState(newState);
    } finally {
      _$_SimilarMovieListControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
state: ${state}
    ''';
  }
}
