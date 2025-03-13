import 'package:flutter/material.dart';

class UniButton extends StatelessWidget {
  final void Function()? onPress;
  final Widget child;

  const UniButton({super.key, this.onPress, required this.child});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
      ),
      child: child,
    );
  }
}
