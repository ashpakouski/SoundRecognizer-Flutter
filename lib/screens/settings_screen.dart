import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Settings",
            style: TextStyle(
              fontSize: 28,
              color: Colors.black87,
              fontFamily: 'Nunito',
            ),
            textAlign: TextAlign.center,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        toolbarHeight: 50,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Image.network(
            "https://static1.cbrimages.com/wordpress/wp-content/uploads/2021/02/rickroll-header.jpg",
          ),
        ),
      ),
    );
  }
}
