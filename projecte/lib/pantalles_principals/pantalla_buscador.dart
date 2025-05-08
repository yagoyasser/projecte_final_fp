import 'package:flutter/material.dart';

class PantallaBuscador extends StatelessWidget {
  static const int idPagina = 2;

  const PantallaBuscador({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 52),
        child: Column(
          children: [
            TextField(
              style: TextStyle(
                color: Colors.white,
              ),
              decoration: InputDecoration(
                hintText: "Cerca el producte desitjat",
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.white,),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 2),
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}