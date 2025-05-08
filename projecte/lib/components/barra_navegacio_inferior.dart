import 'package:flutter/material.dart';
import 'package:projecte/components/pestanyes_barra_navegacio_inferior.dart';

class BarraNavegacioInferior extends StatelessWidget {
  final int idPaginaActiva;
  final Function(int) canviPagina;

  const BarraNavegacioInferior({
    super.key,
    required this.idPaginaActiva,
    required this.canviPagina,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 96,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (int cont = 0; cont < 4; cont++) 
            PestanyesBarraNavegacioInferior(
              idPaginaActiva: idPaginaActiva,
              idPagina: cont,
              alPremer: () => canviPagina(cont),
              ),
        ],
      ),
    );
  }
}