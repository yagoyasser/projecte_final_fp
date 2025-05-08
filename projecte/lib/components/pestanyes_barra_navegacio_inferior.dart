import 'package:flutter/material.dart';
import 'package:projecte/pantalles/pantalla_buscador.dart';
import 'package:projecte/pantalles/pantalla_favorits.dart';
import 'package:projecte/pantalles/pantalla_inici.dart';
import 'package:projecte/pantalles/pantalla_perfil.dart';

class PestanyesBarraNavegacioInferior extends StatelessWidget {
  final int idPaginaActiva;
  final int idPagina;
  final VoidCallback alPremer;

  const PestanyesBarraNavegacioInferior({
    super.key,
    required this.idPaginaActiva,
    required this.idPagina,
    required this.alPremer,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          icon: iconesBarraNavegacioInferior(idPaginaActiva, idPagina),
          onPressed: idPagina == idPaginaActiva ? null : alPremer,
        ),
        textsBarraNavegacioInferior(
          idPaginaActiva,
          idPagina,
        ),
      ],
    );
  }

  Icon iconesBarraNavegacioInferior(int idPaginaActiva, int idPagina) {
    switch (idPagina) {
      case 0:
        return Icon(
          idPaginaActiva == idPagina ? Icons.home : Icons.home_outlined,
        );
      case 1:
        return Icon(
          idPaginaActiva == idPagina ? Icons.search : Icons.search_outlined,
        );
      case 2:
        return Icon(
          idPaginaActiva == idPagina ? Icons.star : Icons.star_border,
        );
      case 3:
        return Icon(
          idPaginaActiva == idPagina
              ? Icons.account_box
              : Icons.account_box_outlined,
        );
      default:
        return Icon(Icons.check); // Aquest cas no ocorrerà mai
    }
  }

  StatelessWidget? pantallaDesti(int idPaginaActiva, int idPagina) {
      final pantalles = <int, StatelessWidget>{
      1: PantallaInici(),
      2: PantallaBuscador(),
      3: PantallaFavorits(),
      4: PantallaPerfil(),
    };

    return pantalles[idPagina];
  }
  
  Text textsBarraNavegacioInferior(int idPaginaActiva, int idPagina) {
    String nomPestanya = '';

    switch (idPagina) {
      case 0:
        nomPestanya = 'Inici';
        break;
      case 1:
        nomPestanya = 'Buscador';
        break;
      case 2:
        nomPestanya = 'Favorits';
        break;
      case 3:
        nomPestanya = 'Perfil';
        break;
      default:
        nomPestanya = '';
    }

    return Text(
      nomPestanya,
      style: TextStyle(
        fontWeight: idPaginaActiva == idPagina ? FontWeight.bold : FontWeight.normal,
        color: Colors.white
      ),
    );
  }
}