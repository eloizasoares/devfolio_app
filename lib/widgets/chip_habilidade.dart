import 'package:flutter/material.dart';

class ChipHabilidade extends StatelessWidget {
  final String nome;

  const ChipHabilidade({super.key, required this.nome});

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: const Icon(
        Icons.check_circle_outline,
        size: 17,
        color: Color(0xFFC4B5FD),
      ),
      label: Text(nome),
      backgroundColor: const Color(0xFF252044),
      side: const BorderSide(color: Color(0xFF6D5AA8)),
      labelStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
