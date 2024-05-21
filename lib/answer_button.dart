import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.ans, this.onTap, {super.key});

  final String ans;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 219, 206, 168),
          foregroundColor: Colors.black87,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
          padding: const EdgeInsets.fromLTRB(40, 10, 40, 10)),
      child: Text(
        ans,
        textAlign: TextAlign.center,
      ),
    );
  }
}
