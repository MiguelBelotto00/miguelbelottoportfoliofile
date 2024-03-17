import 'package:flutter/material.dart';
import 'package:miguelbelotto00/src/feature/home_screen/providers/widgets_manage_basics.dart';
import 'package:miguelbelotto00/src/feature/home_screen/screens/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WidgetsManageBasics(),
      builder: (context, child) {
        return MaterialApp(
          title: 'Miguel Belotto Portfolios',
          theme:
              ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
          home: const Home(),
        );
      },
    );
  }
}
