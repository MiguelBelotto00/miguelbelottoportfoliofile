import 'package:flutter/material.dart';

class PageTrackingManage extends StatefulWidget {
  final Widget widgetChildReceived;
  const PageTrackingManage({Key? key, required this.widgetChildReceived})
      : super(key: key);

  @override
  State<PageTrackingManage> createState() => _PageTrackingManageState();
}

class _PageTrackingManageState extends State<PageTrackingManage> {
  @override
  Widget build(BuildContext context) {
    return widget.widgetChildReceived;
  }
}
