import 'package:flutter/material.dart';
import 'package:projecte/nucli/paleta_colors.dart';

class TarjetesProductes extends StatelessWidget {
  final bool baixadaPreu;

  const TarjetesProductes({super.key, required this.baixadaPreu});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: PaletaColors.fonsTarjeta),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            // Imatge del producte
            SizedBox(
              width: 8,
            ), // S'empra un SizedBox per no emprar un Padding amb padding només a l'esquerra (per la imatge de la informació de la tarjeta)
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Preu nou €",
                        style: TextStyle(
                          fontSize: 32,
                          color: baixadaPreu == true ? Colors.green : Colors.red
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Preu vell €",
                              style: TextStyle(
                                fontSize: 16,
                                color: baixadaPreu == false ? Colors.green : Colors.red
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.favorite_border_outlined, size: 24),
                    ],
                  ),
                  Row(children: [Text("Nom establiment")]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
