import 'package:bored_app/blocs/bloc/bored_bloc.dart';
import 'package:bored_app/pages/bored_page/bored_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Bored?',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.blue,
        ),
        onGenerateRoute: (settings) {
          Widget page;
          switch (settings.name) {
            case BoredPage.routeName:
              page = BlocProvider(
                create: (context) => BoredBloc(),
                child: BoredPage(),
              );
              break;
            default:
              page = BlocProvider(
                create: (context) => BoredBloc(),
                child: BoredPage(),
              );
          }
          return MaterialPageRoute(builder: (context) => page);
        },
        initialRoute: BoredPage.routeName);
  }
}
