import 'package:flutter/material.dart';

class AnswareButton extends StatelessWidget {
  const AnswareButton({
    super.key,
    required this.answareText,
    required this.onTap,
  });

  final String answareText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 106, 53, 116),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          padding: const EdgeInsetsDirectional.symmetric(
            horizontal: 30,
            vertical: 5,
          )),
      onPressed: onTap,
      child: Text(
        answareText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
