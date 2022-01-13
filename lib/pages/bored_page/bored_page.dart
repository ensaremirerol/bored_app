import 'package:bored_app/blocs/bloc/bored_bloc.dart';
import 'package:bored_app/models/bored_model.dart';
import 'package:bored_app/pages/bored_page/widgets/item_fader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BoredPage extends StatelessWidget {
  BoredPage({Key? key}) : super(key: key);

  static const String routeName = '/bored';

  GlobalKey<ItemFaderState> boredKey = GlobalKey<ItemFaderState>();

  GlobalKey<ItemFaderState> buttonKey = GlobalKey<ItemFaderState>();

  @override
  Widget build(BuildContext context) {
    final BoredBloc _boredBloc = BlocProvider.of<BoredBloc>(context);
    return BlocConsumer<BoredBloc, BoredState>(
      listener: (context, state) {
        state.mapOrNull(
          loading: (value) async {
            boredKey.currentState!.fadeOut();
            await Future.delayed(const Duration(milliseconds: 30));
            buttonKey.currentState!.fadeOut();
          },
        );
      },
      buildWhen: (previous, current) {
        return current.maybeMap(
          loaded: (value) => true,
          initial: (value) => true,
          orElse: () => false,
        );
      },
      builder: (context, state) {
        SchedulerBinding.instance!.addPostFrameCallback((timeStamp) async {
          boredKey.currentState!.fadeIn();
          await Future.delayed(const Duration(milliseconds: 30));
          buttonKey.currentState!.fadeIn();
        });
        return Scaffold(
          body: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ItemFader(key: boredKey, child: _getBored(context, state)),
                const SizedBox(height: 16),
                ItemFader(
                  key: buttonKey,
                  child: OutlinedButton(
                    onPressed: () {
                      _boredBloc.add(BoredEvent.getBored());
                    },
                    child: const Text("Get new exciting activity"),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _getBored(BuildContext context, BoredState state) {
    return state.maybeMap(
      initial: (value) => Column(
        children: [
          Text('Bored',
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(fontSize: 80)),
        ],
      ),
      loaded: (value) => Column(
        children: [
          Text(value.boredModel.activity!,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(fontSize: 80)),
        ],
      ),
      orElse: () => Container(),
    );
  }
}
