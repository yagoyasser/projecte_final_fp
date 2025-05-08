import 'package:flutter/material.dart';
import 'package:projecte/components/barra_navegacio_inferior.dart';
import 'package:projecte/nucli/paleta_colors.dart';
import 'package:projecte/pantalles/pantalla_buscador.dart';
import 'package:projecte/pantalles/pantalla_favorits.dart';
import 'package:projecte/pantalles/pantalla_inici.dart';
import 'package:projecte/pantalles/pantalla_perfil.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int idPaginaActiva = 0;
  final List<Widget> pantalles = [
    PantallaInici(),
    PantallaBuscador(),
    PantallaFavorits(),
    PantallaPerfil()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: PaletaColors.fons
      ),
      home: Scaffold(
        body: pantalles[idPaginaActiva],
        bottomNavigationBar: BarraNavegacioInferior(
          idPaginaActiva: idPaginaActiva,
          canviPagina: (int paginaDesti) {
            setState(() {
              idPaginaActiva = paginaDesti;
            });
          }
        ),
      ),
    );
  }
}
