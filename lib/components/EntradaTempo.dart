import 'package:flutter/material.dart';

class EntradaTempo extends StatelessWidget {
  final String titulo;
  final int valor;
  final void Function()? inc;
  final void Function()? dec;

  const EntradaTempo({
    Key? key,
    required this.valor,
    required this.titulo,
    this.inc,
    this.dec,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          this.titulo,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed:this.dec,
                child: Icon(
                  Icons.arrow_downward,
                  color: Colors.white,
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(5),
                  primary: Colors.red,
                ),
              ),
              Text(
                '${this.valor} min',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              ElevatedButton(
                onPressed: this.inc,
                child: Icon(
                  Icons.arrow_upward,
                  color: Colors.white,
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(5),
                  primary: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
