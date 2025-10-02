part of 'lap_top_cubit.dart';

@immutable
sealed class LapTopState {}

final class LapTopInitial extends LapTopState {}

final class LapTopLoading extends LapTopState {}

final class LapTopLoaded extends LapTopState {
  final List<LaptopEntites> lapTopList;
  LapTopLoaded({required this.lapTopList});
}

final class LapTopError extends LapTopState {
  final String message;
  LapTopError({required this.message});
}
