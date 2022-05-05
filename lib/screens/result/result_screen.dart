import 'package:flutter/material.dart';
import 'package:sound_recognizer/generated/sound_service.pb.dart';

class ResultScreen extends StatelessWidget {
  final RecognitionResult recognitionResult;

  const ResultScreen({
    Key? key,
    required this.recognitionResult,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Result",
          style: TextStyle(
            fontSize: 28,
            color: Colors.black87,
            fontFamily: 'Nunito',
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        toolbarHeight: 50,
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  for (var recognizedSound in recognitionResult.recognizedSounds.recognitionResult)
                    _sourceName(recognizedSound.soundSourceName),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Ink(
                  decoration: BoxDecoration(
                    color: Colors.amber[900],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const SizedBox(
                    height: 56,
                    child: Center(
                      child: Text(
                        "Back to recognition",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _sourceName(String sourceName) {
    return Text(
      sourceName,
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
    );
  }
}