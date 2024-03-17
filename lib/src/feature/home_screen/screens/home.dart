import 'package:flutter/material.dart';
import 'package:miguelbelotto00/src/feature/home_screen/providers/widgets_manage_basics.dart';
import 'package:miguelbelotto00/src/feature/home_screen/widgets/page_tracking_manage.dart';
import 'package:miguelbelotto00/src/feature/home_screen/widgets/side_bar_menu.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final widgetPass = Provider.of<WidgetsManageBasics>(context);
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            children: [
              SideBarMenu(
                screenSize: Size(constraints.maxWidth, constraints.maxHeight),
              ),
              PageTrackingManage(widgetChildReceived: widgetPass.widgetsManage),
            ],
          );
        },
      ),
    );
  }
}
