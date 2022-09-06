import 'package:flutter/material.dart';
import 'package:miguelbelotto00/providers/widgets_manage_basics.dart';
import 'package:miguelbelotto00/screens/phone_render.dart';
import 'package:miguelbelotto00/widgets/page_tracking_manage.dart';
import 'package:provider/provider.dart';
import 'package:miguelbelotto00/widgets/side_bar_menu.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final widgetPass = Provider.of<WidgetsManageBasics>(context);
    return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return const PhoneRender();
      } else {
        return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          SideBarMenu(screenSize: screenSize),
          PageTrackingManage(widgetChildReceived: widgetPass.widgetsManage)
        ]);
      }
    }));
  }
}
