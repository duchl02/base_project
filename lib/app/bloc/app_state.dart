part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(false) bool isDarkTheme,
    @Default(false) bool isLoggedIn,
  }) = _AppState;
}
