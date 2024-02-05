import 'package:flutter/material.dart';


void receita_adicionada(BuildContext context) {
  ScaffoldMessenger.of(context).clearSnackBars();

  final snackBar = SnackBar(
    content: const Text('receita adicionada', textAlign: TextAlign.center),
    duration: const Duration(seconds: 4),
    backgroundColor: const Color.fromRGBO(25, 95, 255, 1.0),
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(35),
    ),
    showCloseIcon: true,
    dismissDirection: DismissDirection.down,
    margin: EdgeInsets.only(
      bottom: MediaQuery.of(context).size.height * 0.85,
      left: MediaQuery.of(context).size.width * 0.15,
      right: MediaQuery.of(context).size.width * 0.15,
    ),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

void categoriaVazia(BuildContext context) {
  ScaffoldMessenger.of(context).clearSnackBars();

  final snackBar = SnackBar(
    content: const Text('categoria vazia', textAlign: TextAlign.center),
    duration: const Duration(seconds: 4),
    backgroundColor: const Color.fromRGBO(25, 95, 255, 1.0),
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(35),
    ),
    showCloseIcon: true,
    dismissDirection: DismissDirection.down,
    margin: EdgeInsets.only(
      bottom: MediaQuery.of(context).size.height * 0.85,
      left: MediaQuery.of(context).size.width * 0.15,
      right: MediaQuery.of(context).size.width * 0.15,
    ),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

void textoVazio(BuildContext context) {
  ScaffoldMessenger.of(context).clearSnackBars();

  final snackBar = SnackBar(
    content: const Text('texto vazio', textAlign: TextAlign.center),
    duration: const Duration(seconds: 4),
    backgroundColor: const Color.fromRGBO(25, 95, 255, 1.0),
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(35),
    ),
    showCloseIcon: true,
    dismissDirection: DismissDirection.down,
    margin: EdgeInsets.only(
      bottom: MediaQuery.of(context).size.height * 0.85,
      left: MediaQuery.of(context).size.width * 0.15,
      right: MediaQuery.of(context).size.width * 0.15,
    ),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}