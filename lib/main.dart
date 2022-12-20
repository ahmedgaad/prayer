import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'injection_container.dart';
import 'bloc_observer.dart';
import 'core/utils/routes_manager.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeInjector();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
    );
  }
}
