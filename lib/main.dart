import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sound_recognizer/home_screen.dart';
import 'package:sound_recognizer/screens/recognizer/cubit/recorder_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => RecorderCubit(),
        child: const HomeScreen(),
      ),
    );
  }
}
