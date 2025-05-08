import 'package:flutter/material.dart';
import 'package:projecte/components/tarjetes_productes.dart';
import 'package:projecte/nucli/paleta_colors.dart';

class SeccionsPaginaInici extends StatelessWidget {
  final String nomSeccio;
  final bool baixadaPreu;

  const SeccionsPaginaInici({
    super.key,
    required this.nomSeccio,
    required this.baixadaPreu,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: PaletaColors.fonsComponent),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              nomSeccio,
              style: TextStyle(
                fontSize: 32,
                color: baixadaPreu == true ? Colors.green[200] : Colors.red[200]),
            ),
            Column( // LazyColumn, scrollable
              children: [
                TarjetesProductes(baixadaPreu: baixadaPreu)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
