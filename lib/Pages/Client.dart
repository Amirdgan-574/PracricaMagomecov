import 'package:flutter/material.dart';
import 'package:untitled/Pages/user.dart';
import 'package:untitled/Pages/Gadget.dart';
import 'package:untitled/Pages/initialPage.dart';
import 'package:untitled/Pages/LoginPage.dart';
import 'package:untitled/Pages/GadgetsPage.dart';
import 'package:untitled/Pages/Client.dart';
class Client {
  final String title;
  final String IdClientC;
  final String phoneNumber; // Добавьте поле phoneNumber
  final String address;
  final List<Gadget> gadgets;// Добавили поле gadgets
  final String IdGadgetC; // Добавьте поле IdGadgetC
  void addGadget(Gadget gadget) {
    gadgets.add(gadget);
  }
  Client({required this.title, required this.IdClientC, this.gadgets = const [], this.phoneNumber = "", this.address = "", required this.IdGadgetC});
}
