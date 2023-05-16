import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  // final RecognitionResult recognitionResult;

  const ResultScreen({
    Key? key,
    // required this.recognitionResult,
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            // child: Center(child: _recognitionResultView(recognitionResult)),
            child: Container(),
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
    );
  }

// Widget _recognitionResultView(RecognitionResult recognitionResult) {
//   final _recognitionStatus = recognitionResult.recognitionStatus;
//   final _recognitionResult =
//       recognitionResult.recognizedSounds.recognitionResult;
//
//   if (_recognitionStatus == RecognitionResult_RecognitionStatus.SUCCESS &&
//       _recognitionResult.isNotEmpty) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         const Text(
//           "Sounds like",
//           style: TextStyle(fontSize: 24, fontFamily: 'Mukta'),
//         ),
//         Text(
//           _recognitionResult.first.soundSourceName,
//           textAlign: TextAlign.center,
//           style: const TextStyle(
//             fontSize: 42,
//             fontFamily: 'Mukta',
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//         const SizedBox(
//           height: 86,
//         ),
//         const Text(
//           "Less probable variants",
//           style: TextStyle(fontSize: 16, fontFamily: 'Mukta'),
//         ),
//         for (var recognizedSound in _recognitionResult.skip(1))
//           Text(
//             recognizedSound.soundSourceName,
//             textAlign: TextAlign.center,
//             style: const TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.w400,
//               fontFamily: 'Mukta',
//             ),
//           ),
//       ],
//     );
//   } else {
//     return const Text(
//       "Recognition failed of match couldn't be found 😓",
//       textAlign: TextAlign.center,
//       style: TextStyle(fontSize: 21),
//     );
//   }
// }
}
