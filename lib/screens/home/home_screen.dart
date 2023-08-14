import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF0D0B25), Color(0xFF090B12)],
            stops: [0.4, 0.8]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(width: screen.width / 3),
            Container(
              width: screen.width / 3,
              child: Center(
                child: FloatingActionButton.large(
                  onPressed: () {},
                  backgroundColor: const Color(0xFFE1FE3B),
                  child: const Icon(
                    Icons.mic,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            Container(
              width: screen.width / 3,
              child: Center(
                child: FloatingActionButton.small(
                  onPressed: () {},
                  backgroundColor: const Color(0xFFE1FE3B),
                  child: const Icon(
                    Icons.swap_horiz,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
