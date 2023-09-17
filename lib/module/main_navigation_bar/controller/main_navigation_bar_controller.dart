import 'package:flutter/material.dart';
import 'package:sui/core.dart';
import '../view/main_navigation_bar_view.dart';

class MainNavigationBarController extends State<MainNavigationBarView> {
  static late MainNavigationBarController instance;
  late MainNavigationBarView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int selectedIndex = 0;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }
}
