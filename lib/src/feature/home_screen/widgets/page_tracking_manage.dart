import 'package:flutter/material.dart';

class PageTrackingManage extends StatefulWidget {
  const PageTrackingManage({required this.widgetChildReceived, super.key});
  final Widget widgetChildReceived;

  @override
  State<PageTrackingManage> createState() => _PageTrackingManageState();
}

class _PageTrackingManageState extends State<PageTrackingManage> {
  @override
  Widget build(BuildContext context) {
    return widget.widgetChildReceived;
  }
}
