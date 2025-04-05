import 'package:flutter/material.dart';
import 'package:my_learning/styled_body_text.dart';
import 'package:my_learning/styled_button.dart';

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
            const StyleBodyText('Activity:  '),
            for (int i = 0; i < activity; i++)
              Image.asset('assets/img/study.png', width: 25),
            const Expanded(child: SizedBox()),
            StyledButton(onPressed: increaseStrength, child: const Text('+')),
          ],
        ),
        Row(
          children: [
            const StyleBodyText('Focus: '),
            for (int i = 0; i < focus; i++)
              Image.asset('assets/img/target.png', width: 25),
            const Expanded(child: SizedBox()),
            StyledButton(onPressed: increaseFocus, child: const Text('+')),
          ],
        ),
      ],
    );
  }
}
