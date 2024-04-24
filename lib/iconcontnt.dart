import 'package:flutter/material.dart';

class iconContent extends StatelessWidget {
  final IconData icon;
  final String label;
  iconContent({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white70,
          size: 60,
        ),
        SizedBox(height: 10),
        Text(
          label,
          style: TextStyle(
              color: Colors.grey, fontSize: 28, fontWeight: FontWeight.w800),
        )
      ],
    );
  }
}
