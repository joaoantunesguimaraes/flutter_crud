import 'package:flutter/cupertino.dart';

/*
rever conceitos

variável de instancia -- não é necessário nada - ex: public String cor = "Azul";
constante de instancia -- final -- ex: public final double PI;

variável de classe -- static
constante de classe --  static final -- public static final double PI;


static
final  - constante

const
late
required


*/

class User {
  // Constante de Instância
  final String? id;
  final String name;
  final String email;
  String avatarUrl = '';

  // Construtor com Parâmetro nomeado
  //User({required this.id, required this.name, required this.email, this.avatarUrl = ''});
  User({this.id, required this.name, required this.email, this.avatarUrl = ''});
}
