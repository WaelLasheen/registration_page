import 'package:flutter/material.dart';

class feild extends StatelessWidget {
  final String hint;
  final bool textVisibilty;
  const feild({super.key, required this.hint, required this.textVisibilty});

  @override
  Widget build(BuildContext context) {
    return Container(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                child: TextField(
                  obscureText: textVisibilty,
                  decoration: InputDecoration(
                    hintText: hint,
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: InputBorder.none
                  ),
                ),
              );
  }
}