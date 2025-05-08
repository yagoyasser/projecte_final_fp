import 'package:flutter/material.dart';
import 'package:projecte/components/seccions_pagina_inici.dart';
import 'package:projecte/nucli/paleta_colors.dart';

class PantallaInici extends StatelessWidget {
  static const int idPagina = 1;

  const PantallaInici({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Comparador de preus"
        ),
        backgroundColor: PaletaColors.fonsScaffoldAppBar,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SeccionsPaginaInici(nomSeccio: "Últimes baixades de preu", baixadaPreu: true,),
            SeccionsPaginaInici(nomSeccio: "Últimes pujades de preu", baixadaPreu: false),
          ],
        ),
      ),
    );
  }
}