import 'package:flutter/material.dart';

class PageTrackingManage extends StatefulWidget {
  final Widget widgetChildReceived;
  const PageTrackingManage({super.key, required this.widgetChildReceived});

  @override
  State<PageTrackingManage> createState() => _PageTrackingManageState();
}

class _PageTrackingManageState extends State<PageTrackingManage> {
  @override
  Widget build(BuildContext context) {
    return widget.widgetChildReceived;
  }
}
