import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sound_recognizer/screens/home/view/root_screen.dart';
import 'package:sound_recognizer/screens/recognizer/cubit/recognizer_cubit.dart';
import 'package:sound_recognizer/screens/recorder/cubit/recorder_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider<RecorderCubit>(
            create: (BuildContext context) => RecorderCubit(),
          ),
          BlocProvider<RecognizerCubit>(
            create: (BuildContext context) => RecognizerCubit(),
          ),
        ],
        child: const RootScreen(),
      ),
    );
  }
}
