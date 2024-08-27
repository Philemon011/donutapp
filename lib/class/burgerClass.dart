import 'package:flutter/material.dart';

class Burgerclass {
  String _nom='';
  String prix;
  Color couleur;
  String chemin;

  String get nom => _nom;

  set nom(newNom) {
    _nom = newNom;
  }

  Burgerclass(
      {
      required nom,
      required this.prix,
      required this.couleur,
      required this.chemin}): _nom = nom;
}
