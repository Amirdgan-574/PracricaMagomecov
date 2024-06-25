import 'package:flutter/material.dart';
import 'package:untitled/Pages/user.dart';
import 'package:untitled/Pages/Gadget.dart';
import 'package:untitled/Pages/initialPage.dart';
import 'package:untitled/Pages/LoginPage.dart';
import 'package:untitled/Pages/GadgetsPage.dart';
import 'package:untitled/Pages/Client.dart';
class Gadget {
  final String title;
  final String IdGadgetG;
  final String photo;
  final DateTime rentalPeriod; // Используем int для rentalPeriod
  final double rentalCost;
  final int dayarend;// Используем double для rentalCost
  final List<Client> clients;
  final String worker;// Используем List<Client> для хранения клиентов

  void rent(Client client) {
    clients.add(client); // Добавляем клиента в список клиентов гаджета
  }

  Gadget({
    required this.title,
    required this.photo,
    this.clients = const [],
    required this.IdGadgetG,
    required this.rentalPeriod,
    required this.rentalCost,
    required this.dayarend,
    required this.worker
  });
}
