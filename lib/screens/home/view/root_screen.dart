import 'package:flutter/material.dart';
import 'package:sound_recognizer/screens/recognizer/view/recognizer_screen.dart';
import 'package:sound_recognizer/screens/recorder/view/recorder_screen.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  final List<Tab> _tabs = [
    const Tab(
      icon: Icon(Icons.home),
      text: "Recording",
    ),
    const Tab(
      icon: Icon(Icons.access_alarm),
      text: "Recognition",
    ),
  ];

  final List<Widget> _pages = [
    const RecorderScreen(),
    const RecognizerScreen()
  ];

  @override
  void initState() {
    _tabController = TabController(
      vsync: this,
      length: _tabs.length,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  Widget _body() {
    return TabBarView(
      controller: _tabController,
      physics: const NeverScrollableScrollPhysics(),
      children: _pages,
    );
  }

  Widget _bottomNavigationBar() {
    return TabBar(
      controller: _tabController,
      tabs: _tabs,
    );
  }
}
