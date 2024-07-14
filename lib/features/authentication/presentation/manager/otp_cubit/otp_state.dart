part of 'otp_cubit.dart';

@immutable
sealed class OtpState {}

final class OtpInitial extends OtpState {}
final class OtpSuccess extends OtpState {}
final class OtpLoading extends OtpState {}
final class OtpError extends OtpState {
  final String massError;

  OtpError({required this.massError});
}
