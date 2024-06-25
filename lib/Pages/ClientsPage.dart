import 'package:flutter/material.dart';
import 'package:untitled/Pages/Gadget.dart';
import 'package:untitled/Pages/Client.dart';
import 'package:untitled/Pages/GadgetsPage.dart';
import 'package:untitled/Pages/InitialPage.dart';
import 'package:untitled/Pages/ClientPage.dart';

import 'package:untitled/Pages/ClientPage.dart';

class ClientsPage extends StatefulWidget {
  final Gadget gadget;

  ClientsPage({required this.gadget});

  @override
  _ClientsPageState createState() => _ClientsPageState();
}

class _ClientsPageState extends State<ClientsPage> {
  String _searchText = '';
  List<Client> _displayedClients = [];

  @override
  void initState() {
    super.initState();
    _displayedClients = widget.gadget.clients;
  }

  void _searchClient(String text) {
    setState(() {
      _searchText = text;
      _displayedClients = widget.gadget.clients.where((client) =>
          client.title.toLowerCase().contains(_searchText.toLowerCase())
      ).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Список арендаторов", style: TextStyle(fontSize: 22)),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => GadgetsPage()  ));
            },
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(4.0),
            child: Container(),
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(widget.gadget.title, style: TextStyle(fontSize: 16)),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: TextField(
                onChanged: _searchClient,
                decoration: InputDecoration(
                  hintText: 'Поиск клиента',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _displayedClients.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_displayedClients[index].title),
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ClientPage(
                              client: _displayedClients[index],
                            ),
                          ),
                        );
                      });
                    },
                  );
                },
              ),
            ),
          ],
        )
    );
  }
}
