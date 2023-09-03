import 'package:flutter/material.dart';

class RecordingDetailsScreen extends StatelessWidget {
  static const routeName = "recordingDetails";

  const RecordingDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final soundValues = ModalRoute.of(context)!.settings.arguments as List<int>;

    return Scaffold(
      backgroundColor: const Color(0xFF191C1E),
      body: Center(
        child: Text("Recording length is ${soundValues.length}"),
      ),
    );
  }
}
