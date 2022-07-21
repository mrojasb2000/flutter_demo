import 'package:flutter/material.dart';

class EmiticonFace extends StatelessWidget {
  final String emoticonFace;
  const EmiticonFace({
    Key? key,
    required this.emoticonFace,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      child: Center(
          child: Text(
        emoticonFace,
        style: const TextStyle(
          fontSize: 28,
        ),
      )),
    );
  }
}
