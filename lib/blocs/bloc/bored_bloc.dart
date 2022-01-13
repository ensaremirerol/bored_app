import 'package:bloc/bloc.dart';
import 'package:bored_app/models/bored_model.dart';
import 'package:bored_app/services/bored_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bored_event.dart';
part 'bored_state.dart';
part 'bored_bloc.freezed.dart';

class BoredBloc extends Bloc<BoredEvent, BoredState> {
  BoredBloc() : super(_Initial()) {
    on<BoredEvent>((event, emit) async {
      if (event is _GetBored) {
        emit(BoredState.loading());
        try {
          BoredModel? bored = await BoredService.instance.getBored();
          if (bored != null) {
            emit(BoredState.loaded(bored));
          } else {
            emit(BoredState.error("Unable to get new exciting activity"));
          }
        } catch (e) {
          emit(BoredState.error(
              "Someting went wrong while getting new exciting activity : $e"));
        }
      }
    });
  }
}
