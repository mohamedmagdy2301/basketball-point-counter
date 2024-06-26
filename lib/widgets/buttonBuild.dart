import 'package:flutter/material.dart';

class buttonBuild extends StatefulWidget {
  const buttonBuild({
    super.key,
    required this.adder,
    required this.function,
  });
  final String adder;
  final VoidCallback function;

  @override
  State<buttonBuild> createState() => _buttonBuildState();
}

class _buttonBuildState extends State<buttonBuild> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.function,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 202, 94, 5),
        ),
        margin: const EdgeInsets.symmetric(vertical: 15),
        height: 45,
        width: 135,
        child: Center(
          child: Text(
            widget.adder,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
      ),
    );
  }
}
