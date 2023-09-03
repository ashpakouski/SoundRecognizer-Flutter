import 'package:flutter/material.dart';

class RecordingDetailsScreen extends StatelessWidget {
  static const routeName = "recordingDetails";

  const RecordingDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191C1E),
      body: Center(
        child: Text("Recording details"),
      ),
    );
  }
}
