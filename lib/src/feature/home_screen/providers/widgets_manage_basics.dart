import 'package:flutter/material.dart';
import 'package:miguelbelotto00/src/feature/portfolio_page/screens/init_page.dart';

class WidgetsManageBasics with ChangeNotifier {
  Widget _widgetsManage = const InitPage();

  Widget get widgetsManage {
    return _widgetsManage;
  }

  set widgetsManage(Widget widgetsReceived) {
    _widgetsManage = widgetsReceived;
    notifyListeners();
  }
}
