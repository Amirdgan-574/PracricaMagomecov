import 'package:flutter/material.dart';
import 'package:untitled/Pages/Gadget.dart';

class ClientsPage extends StatelessWidget {
  final Gadget gadget; // Получим объект Gadget

  const ClientsPage({Key? key, required this.gadget}) : super(key: key);

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
                    itemCount: gadget.clients.length,
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
