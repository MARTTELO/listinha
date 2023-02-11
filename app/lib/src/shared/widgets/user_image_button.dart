import 'package:flutter/material.dart';

class UserImageButton extends StatelessWidget {
  const UserImageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: const CircleAvatar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.purple,
        child: Text('M'),
      ),
    );
  }
}
