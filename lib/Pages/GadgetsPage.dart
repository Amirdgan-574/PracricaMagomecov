import 'package:flutter/material.dart';
import 'package:untitled/Pages/Gadget.dart';
import 'package:untitled/main.dart';
import 'package:untitled/Pages/Client.dart';
import 'package:untitled/Pages/ClientsPage.dart'; // Импортируйте ClientsPage

class GadgetsPage extends StatelessWidget {
  final Gadget gadget; // Добавили параметр gadget

  GadgetsPage({required this.gadget}); // Исправлено: добавлен required

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(gadget.title, style: TextStyle(color: Colors.black)),
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: ListView.builder(
                    itemCount: gadget.clients.length, // Используем clients из gadget
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(gadget.clients[index].title),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}