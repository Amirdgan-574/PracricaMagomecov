import 'package:flutter/material.dart';
import 'package:untitled/Pages/user.dart';
import 'package:untitled/Pages/Gadget.dart';
import 'package:untitled/Pages/initialPage.dart';
import 'package:untitled/Pages/LoginPage.dart';
import 'package:untitled/Pages/GadgetsPage.dart';
import 'package:untitled/Pages/Client.dart';
import 'package:untitled/Pages/ClientsPage.dart';
import 'package:intl/intl.dart';

class ClientPage extends StatelessWidget {
  final Client client;

  ClientPage({required this.client});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Информация о клиенте"),
      ),
      backgroundColor: Theme
          .of(context)
          .scaffoldBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(client.title, style: TextStyle(fontSize: 20)),
          ),
          Divider(),
          ListTile(
            title: Text("Номер телефона:"),
            trailing: Text(
                client.phoneNumber, style: TextStyle(fontSize: 16)),
          ),
          ListTile(
            title: Text("Адрес:"),
            trailing: Text(
                client.address, style: TextStyle(fontSize: 16)),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text("Арендованное оборудование", style: TextStyle(fontSize: 20)),
          ),
          Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: client.gadgets.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(client.gadgets[index].title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 4),
                      Text("Начало аренды: ${DateFormat('dd.MM.yyyy').format(client.gadgets[index].rentalPeriod)}"),
                      SizedBox(height: 4),
                      Text("Стоимость аренды: ${client.gadgets[index].rentalCost}"),
                      SizedBox(height: 4),
                      Text("Длительность аренды: ${client.gadgets[index].dayarend} дней"),
                      SizedBox(height: 4),
                      Text("Работник заключивший аренду: ${client.gadgets[index].worker} "),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),

    );
  }
}
