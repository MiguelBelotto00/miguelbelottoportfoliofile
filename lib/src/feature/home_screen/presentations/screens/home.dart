import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_miguel_belotto/src/feature/home_screen/presentations/widgets/side_bar_menu.dart';

class Home extends StatelessWidget {
  const Home({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            children: [
              SideBarMenu(
                screenSize: Size(constraints.maxWidth, constraints.maxHeight),
                navigationShell: navigationShell,
              ),
              Flexible(child: navigationShell),
            ],
          );
        },
      ),
    );
  }
}
