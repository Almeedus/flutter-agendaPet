import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final VoidCallback onPressed;

  const RoundButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      shape: const CircleBorder(),
      elevation: 4,
      child: Ink(
        decoration: const ShapeDecoration(
          color: Colors.grey, // cor do botão
          shape: CircleBorder(),
        ),
        child: IconButton(
          icon: const Icon(Icons.arrow_forward, color: Colors.white),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
