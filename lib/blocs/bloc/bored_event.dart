part of 'bored_bloc.dart';

@freezed
class BoredEvent with _$BoredEvent {
  const factory BoredEvent.started() = _Started;
  const factory BoredEvent.getBored() = _GetBored;
}