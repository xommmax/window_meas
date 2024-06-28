import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    required this.icon,
    required this.label,
    required this.onPressed,
    super.key,
  });

  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) => TextButton.icon(
        icon: FaIcon(icon, color: Colors.black87),
        label: Text(
          label,
          style: const TextStyle(color: Colors.black87),
        ),
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          elevation: 3,
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      );
}
