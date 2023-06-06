part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.initiated() = AppInitiated;

  const factory AppEvent.themeChanged({
    required bool isDarkTheme,
  }) = AppThemeChanged;
}
