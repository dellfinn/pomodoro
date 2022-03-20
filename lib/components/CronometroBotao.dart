import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  final IconData icone;
  final void Function()? click;

  const CronometroBotao({
    Key? key,
    required this.icone,
    this.click,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: const Color(0xfffffd532),
        shape: const CircleBorder(),
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        textStyle: const TextStyle(
          fontSize: 25,
        ),
      ),
      onPressed: click,
      child: Row(
        children: [
          Icon(
            icone,
            size: 45,
            color: const Color(0xFFce1c1c),
          ),
        ],
      ),
    );
  }
}
