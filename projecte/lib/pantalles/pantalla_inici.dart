import 'package:flutter/material.dart';
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
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}