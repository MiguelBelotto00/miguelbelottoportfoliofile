import 'package:flutter/material.dart';
import 'package:miguelbelotto00/providers/widgets_manage_basics.dart';
import 'package:provider/provider.dart';
import 'package:miguelbelotto00/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
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
