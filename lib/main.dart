import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sound_recognizer/screens/home/view/recognizer_screen.dart';
import 'package:sound_recognizer/utils/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

  runApp(const SoundRecognizerApp());
}

class SoundRecognizerApp extends StatelessWidget {
  const SoundRecognizerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: RecognizerScreen.routeName,
      routes: appRoutes,
    );
  }
}
