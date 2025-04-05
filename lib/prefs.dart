import 'package:flutter/material.dart';

class LearningPrefs extends StatefulWidget {
  const LearningPrefs({super.key});

  @override
  State<LearningPrefs> createState() => _LearningPrefsState();
}

class _LearningPrefsState extends State<LearningPrefs> {
  int activity = 1;
  int focus = 1;

  void increaseStrength() {
    setState(() {
      activity = activity < 10 ? activity + 1 : 1;
    });
  }

  void increaseFocus() {
    setState(() {
      focus = focus < 10 ? focus + 1 : 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Activity: '),
            Text('$activity'),
            Image.asset('assets/img/study.png', width: 25),
            const Expanded(child: SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.yellow,
              ),
              onPressed: increaseStrength,

              child: const Text('+'),
            ),
          ],
        ),
        Row(
          children: [
            const Text('Focus: '),
            Text('$focus'),
            Image.asset('assets/img/target.png', width: 25),
            const Expanded(child: SizedBox()),
            TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.green),
              onPressed: increaseFocus,
              child: const Text('+'),
            ),
          ],
        ),
      ],
    );
  }
}
