import 'package:flutter/material.dart';
import 'package:untitled/Pages/user.dart';
import 'package:untitled/Pages/Gadget.dart';
import 'package:untitled/Pages/initialPage.dart';
import 'package:untitled/Pages/LoginPage.dart';
import 'package:untitled/Pages/GadgetsPage.dart';
import 'package:untitled/Pages/Client.dart';
import 'package:untitled/Pages/ClientsPage.dart';
import 'package:untitled/Pages/ClientPage.dart';
import 'package:untitled/Pages/AllClientsPage.dart';
import 'package:untitled/Pages/WorkPage.dart';

class AllClientsPage extends StatefulWidget {
  @override
  _AllClientsPageState createState() => _AllClientsPageState();
}

class _AllClientsPageState extends State<AllClientsPage> {
  String _searchText = '';
  List<Client> _displayedClients = [];
  List<Client> clients = [
    // Объявляем список клиентов
    Client(
        title: 'Клиент 1',
        IdClientC: "1",
        IdGadgetC: '',
        phoneNumber: '+79432363476',
        address: 'г.Москва,ул.Барикадная,д.7',
        gadgets: [
          Gadget(
              title:
              'Комлект из настольного микрофонного массива MXA310B (цвет чёрный) и DSP-процессора IntelliMix P300',
              photo:
              'https://uchenikspb.ru/images/cms/thumbs/1364b73b76f7396bf162bf2c90ee9f848f8c1ced/1132_700_auto_jpg_5_100.jpg',
              IdGadgetG: '1',
              rentalPeriod: DateTime.parse("2024-03-15"),
              rentalCost: 1200,
              dayarend: 21,
              worker: 'Иван Иванов'),
          Gadget(
              title:
              'Комлект из настольного микрофонного массива MXA310W (цвет белый) и DSP-процессора IntelliMix P300',
              photo:
              'https://www.bigtv.ru/storage/goodsImages/615/615222/clear_615222_1.jpg',
              IdGadgetG: '2',
              rentalPeriod: DateTime.parse("2024-06-15"),
              rentalCost: 2100,
              dayarend: 13,
              worker: 'Иван Иванов')
        ]),
    Client(
        title: 'Клиент 2',
        IdGadgetC: "1",
        IdClientC: '',
        phoneNumber: '+79432363476',
        address: 'г.Москва,ул.Барикадная,д.7',
        gadgets: [
          Gadget(
              title:
              'Комлект из настольного микрофонного массива MXA310B (цвет чёрный) и DSP-процессора IntelliMix P300',
              photo:
              'https://uchenikspb.ru/images/cms/thumbs/1364b73b76f7396bf162bf2c90ee9f848f8c1ced/1132_700_auto_jpg_5_100.jpg',
              IdGadgetG: '1',
              rentalPeriod: DateTime.parse("2024-03-15"),
              rentalCost: 1200,
              dayarend: 21,
              worker: 'Иван Иванов')
        ])
  ];

  @override
  void initState() {
    super.initState();
    _displayedClients = clients;
  }

  void _searchClient(String text) {
    setState(() {
      _searchText = text;
      _displayedClients = clients.where((client) =>
          client.title.toLowerCase().contains(_searchText.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("Клиенты", style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => GadgetsPage()));
          },
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(4.0),
          child: Container(),
        ),
      ),
      backgroundColor: Colors.grey[100],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0), // Добавили отступ
            child: TextField(
              onChanged: _searchClient,
              decoration: InputDecoration(
                hintText: 'Поиск клиента',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _displayedClients.length,
              itemBuilder: (context, index) {
                final client = _displayedClients[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ClientPage(client: client),
                      ),
                    );
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0), // Добавили отступ
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.person),
                      ),
                      title: Text(client.title),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(client.phoneNumber),
                          Text(client.address),
                        ],
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
        bottomNavigationBar: SizedBox(
          height: 60,
          child: BottomAppBar(
            color: Colors.deepOrangeAccent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.inventory, color: Colors.white),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GadgetsPage()),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.people, color: Colors.white), onPressed: () {  },
                ),
                IconButton(
                  icon: Icon(Icons.work, color: Colors.white),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WorkPage()),
                    );
                  },
                ),
              ],
            ),
          ),
        )
    );
  }
}
