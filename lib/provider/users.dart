// Este é um Provider

import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter_crud/data/dummy_users.dart';
import 'package:flutter_crud/models/user.dart';

// listeners
// Padrão Observer
class Users with ChangeNotifier {
  //final Map<String, User> _items = {...dummyUsers};//coder
  final Map<String, User> _itens = {...DUMMY_USERS};

  // Método get
  List<User> get all {
    // retorna um clone
    return [..._itens.values];
  }

  // Método get
  int get count {
    return _itens.length;
  }

  User byIndex(int i) {
    return _itens.values.elementAt(i);
  }

  // Método put -- inserir elemento
  void put(User user) {
    if (user == null) {
      return;
    }

    if (user.id != null &&
        user.id!.trim().isNotEmpty &&
        _itens.containsKey(user.id)) {
      // Alteração
      _itens.update(user.id!, (_) => user);
    } else {
      // Adicionar
      final id = Random().nextDouble().toString();
      _itens.putIfAbsent(
          id,
          () => User(
                id: id,
                name: user.name,
                email: user.email,
                avatarUrl: user.avatarUrl,
              ));
    }
    notifyListeners();
  }

  // Método para remover um Utilizador
  void remove(User user) {
    if (user != null && user.id != null) {
      _itens.remove(user.id);
      notifyListeners();
    }
  }
}
