part of 'app_state_cubit.dart';

@immutable
sealed class AppStateState {}

final class AppStateInitial extends AppStateState {}

final class ChangeIndexButtonNavBar extends AppStateState{}

final class ChangeIndexWidget extends AppStateState{}
