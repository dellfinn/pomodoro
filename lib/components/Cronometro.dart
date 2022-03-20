import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/CronometroBotao.dart';
import 'package:provider/provider.dart';
import '../store/pomodoro.store.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Observer(
      builder: (_) {
        return Container(
          color: store.estaTrabalhando() ? Colors.white : Color(0xFF202124),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Text(
                  store.estaTrabalhando() ? 'Trabalhar' : 'Descansar',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: store.estaTrabalhando()
                          ? const Color(0xFF202124)
                          : Colors.white),
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'lib/assets/images/PomodoroOficial.png',
                    width: 420,
                    height: 420,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFce1c1c),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 15, bottom: 25, right: 20, left: 20),
                        child: Text(
                          '${store.minutos.toString().padLeft(2, '0')}:${store.segundos.toString().padLeft(2, '0')}',
                          style: TextStyle(
                            fontSize: 100,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (!store.iniciado)
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: CronometroBotao(
                        icone: Icons.play_arrow,
                        click: store.iniciar,
                      ),
                    ),
                  if (store.iniciado)
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: CronometroBotao(
                        icone: Icons.stop,
                        click: store.parar,
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: CronometroBotao(
                      icone: Icons.refresh,
                      click: store.reiniciar,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
