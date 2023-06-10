import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_bloc.freezed.dart';
part 'app_event.dart';
part 'app_state.dart';

@Singleton()
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(const AppState()) {
    on<AppThemeChanged>(_onAppThemeChanged);
    on<AppInitiated>(_onAppInitiated);
  }

  Future<void> _onAppThemeChanged(
    AppThemeChanged event,
    Emitter<AppState> emit,
  ) async {
    emit(state.copyWith(isDarkTheme: event.isDarkTheme));
  }

  Future<void> _onAppInitiated(
    AppInitiated event,
    Emitter<AppState> emit,
  ) async {
    emit(state.copyWith(
      isDarkTheme: false,
      isLoggedIn: false,
    ));
  }
}
