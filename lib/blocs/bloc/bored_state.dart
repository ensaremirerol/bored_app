part of 'bored_bloc.dart';

@freezed
class BoredState with _$BoredState {
  const factory BoredState.initial() = _Initial;
  const factory BoredState.loading() = _Loading;
  const factory BoredState.loaded(BoredModel boredModel) = _Loaded;
  const factory BoredState.error(String error) = _Error;
}
