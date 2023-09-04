import 'package:flutter/material.dart';
import 'package:sound_recognizer/component/index.dart';

class RecordingDetailsScreen extends StatelessWidget {
  static const routeName = "recordingDetails";

  RecordingDetailsScreen({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final soundValues = ModalRoute.of(context)!.settings.arguments as List<int>;

    return Scaffold(
      backgroundColor: const Color(0xFF191C1E),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: TextInputField(
            controller: controller,
            hint: "Sound name",
          ),
        ),
      ),
    );
  }
}
