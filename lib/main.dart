import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio_miguel_belotto/core/config/router.dart';

void main() {
  runZonedGuarded(() {
    WidgetsFlutterBinding.ensureInitialized();

    runApp(const MyApp());
  }, (error, stackTrace) {
    debugPrint('Error: $error');
    debugPrint('Stack Trace: $stackTrace');
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp.router(
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          useMaterial3: true,
          fontFamily: 'Poppins',
        ),
        routerConfig: router,
      ),
    );
  }
}
