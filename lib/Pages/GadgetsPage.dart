import 'package:flutter/material.dart';
import 'package:untitled/Pages/user.dart';
import 'package:untitled/Pages/Gadget.dart';
import 'package:untitled/Pages/initialPage.dart';
import 'package:untitled/Pages/LoginPage.dart';
import 'package:untitled/Pages/GadgetsPage.dart';
import 'package:untitled/Pages/Client.dart';
import 'package:untitled/Pages/ClientsPage.dart';
import 'package:untitled/Pages/AllClientsPage.dart';
import 'package:untitled/Pages/WorkPage.dart';

class GadgetsPage extends StatefulWidget {
  @override
  _GadgetsPageState createState() => _GadgetsPageState();
}

class _GadgetsPageState extends State<GadgetsPage> {
  final List<Gadget> _gadgets = [
    Gadget(
        title: 'Комлект из настольного микрофонного массива MXA310B (цвет чёрный) и DSP-процессора IntelliMix P300',
        photo:
        'https://uchenikspb.ru/images/cms/thumbs/1364b73b76f7396bf162bf2c90ee9f848f8c1ced/1132_700_auto_jpg_5_100.jpg',
        IdGadgetG: "1",
        clients: [
          Client(title: 'Клиент 1', IdClientC: "1", IdGadgetC: '',phoneNumber: '+79432363476',address: 'г.Москва,ул.Барикадная,д.7',
              gadgets: [
                Gadget(title: 'Комлект из настольного микрофонного массива MXA310B (цвет чёрный) и DSP-процессора IntelliMix P300', photo: 'https://uchenikspb.ru/images/cms/thumbs/1364b73b76f7396bf162bf2c90ee9f848f8c1ced/1132_700_auto_jpg_5_100.jpg', IdGadgetG: '1', rentalPeriod: DateTime.parse("2024-03-15"), rentalCost: 1200, dayarend: 21, worker: 'Иван Иванов'),
                Gadget(title: 'Комлект из настольного микрофонного массива MXA310W (цвет белый) и DSP-процессора IntelliMix P300', photo: 'https://www.bigtv.ru/storage/goodsImages/615/615222/clear_615222_1.jpg', IdGadgetG: '2', rentalPeriod: DateTime.parse("2024-06-15"), rentalCost: 2100, dayarend: 13, worker: 'Иван Иванов')
              ]
          ),
          Client(title: 'Клиент 2', IdGadgetC: "1", IdClientC: '',phoneNumber: '+79432363476',address: 'г.Москва,ул.Барикадная,д.7',gadgets: [
            Gadget(title: 'Комлект из настольного микрофонного массива MXA310B (цвет чёрный) и DSP-процессора IntelliMix P300', photo: 'https://uchenikspb.ru/images/cms/thumbs/1364b73b76f7396bf162bf2c90ee9f848f8c1ced/1132_700_auto_jpg_5_100.jpg', IdGadgetG: '1', rentalPeriod: DateTime.parse("2024-03-15"), rentalCost: 1200, dayarend: 21, worker: 'Иван Иванов')
          ]
          ),
        ],
        rentalPeriod: DateTime.parse("2024-06-15"),
        rentalCost: 1200,
        dayarend: 20, worker: ''

    ),
    Gadget(
        title: 'Комлект из настольного микрофонного массива MXA310W (цвет белый) и DSP-процессора IntelliMix P300',
        photo:
        'https://www.bigtv.ru/storage/goodsImages/615/615222/clear_615222_1.jpg',
        IdGadgetG: "2",
        clients: [
          Client(title: 'Клиент 1', IdClientC: "1", IdGadgetC: '',phoneNumber: '+79432363476',address: 'г.Москва,ул.Барикадная,д.7',
              gadgets: [
                Gadget(title: 'Комлект из настольного микрофонного массива MXA310B (цвет чёрный) и DSP-процессора IntelliMix P300', photo: 'https://uchenikspb.ru/images/cms/thumbs/1364b73b76f7396bf162bf2c90ee9f848f8c1ced/1132_700_auto_jpg_5_100.jpg', IdGadgetG: '1', rentalPeriod: DateTime.parse("2024-03-15"), rentalCost: 1200, dayarend: 21, worker: ''),
                Gadget(title: 'Комлект из настольного микрофонного массива MXA310W (цвет белый) и DSP-процессора IntelliMix P300', photo: 'https://www.bigtv.ru/storage/goodsImages/615/615222/clear_615222_1.jpg', IdGadgetG: '2', rentalPeriod: DateTime.parse("2024-06-15"), rentalCost: 2100, dayarend: 13, worker: '')
              ])],
        rentalPeriod: DateTime.parse("2024-06-15"),
        rentalCost: 1200,
        dayarend: 20, worker: ''
    ),
    Gadget(
        title: 'Комплект из потолочного микрофонного массива MXA910AL-60CM (цвет серый) и DSP-процессора IntelliMix P300',
        photo:
        'https://uchenikspb.ru/images/cms/thumbs/1364b73b76f7396bf162bf2c90ee9f848f8c1ced/1134_700_auto_jpg_5_100.jpg',
        IdGadgetG: "3",
        rentalPeriod: DateTime.parse("2024-06-15"),
        rentalCost: 1200,
        dayarend: 20, worker: ''
    ),
    Gadget(
        title: 'Комплект из потолочного микрофонного массива MXA910AL-60CM (цвет чёрный) и DSP-процессора IntelliMix P300',
        photo:
        'https://lsspro.ru/assets/cache_image/Images/Shure/MXA910B-60-USB-P%20-%201_1200x890_410.png',
        IdGadgetG: "4",
        rentalPeriod: DateTime.parse("2024-06-15"),
        rentalCost: 1200,
        dayarend: 20, worker: ''
    ),
    Gadget(
        title: 'Комплект из потолочного микрофонного массива MXA910AL-60CM (цвет белый) и DSP-процессора IntelliMix P300',
        photo:
        'https://www.bigtv.ru/storage/goodsImages/615/615205/1000x1000-615205_1.jpg',
        IdGadgetG: "5",
        rentalPeriod: DateTime.parse("2024-06-15"),
        rentalCost: 1200,
        dayarend: 20, worker: ''
    ),
    Gadget(
        title: 'Сетевая карта Dante с резервированием для микшеров SCM820',
        photo:
        'https://cdn-ru.bitrix24.ru/b10214741/landing/bf0/bf05c36dc54351ae70e9f6abcc858abf/2b4eac2e0c698ce1918902645d90f2bc_1x.jpeg',
        IdGadgetG: "6",
        rentalPeriod: DateTime.parse("2024-06-15"),
        rentalCost: 1200,
        dayarend: 20, worker: ''
    ),
    Gadget(
        title: 'Кабель с разъёмами 2 х DB25 - 8 x TRS, длина 7,6 м',
        photo:
        'https://my3oboz.ru/upload/iblock/eb8/eb81d810175348fa348ebf6b713a03c6.jpg',
        IdGadgetG: "7",
        rentalPeriod: DateTime.parse("2024-06-15"),
        rentalCost: 1200,
        dayarend: 20, worker: ''
    ),
    Gadget(
        title: 'Терминатор RJ45, 5 шт.',
        photo:
        'https://www.terralec.co.uk/Portals/54/product/images/prd96668ee0-9dd8-4589-ae7a-ef7c0620878b.jpg',
        IdGadgetG: "8",
        rentalPeriod: DateTime.parse("2024-06-15"),
        rentalCost: 1200,
        dayarend: 20, worker: ''
    ),
    Gadget(
        title: 'Патч-корд STP Cat5e, разъёмы RJ45, чёрный, длина 5 м',
        photo:
        'https://idistribute.ru/upload/iblock/b85/b85040db43c730c840929c5f7da1a430.jpg',
        IdGadgetG: "9",
        rentalPeriod: DateTime.parse("2024-06-15"),
        rentalCost: 1200,
        dayarend: 20, worker: ''
    ),
    Gadget(
        title: 'CS 6340 FV VER. CH. SEL.',
        photo:
        'https://sinki.pro/upload/iblock/ce0/ce0a67e84a6db1cb3fc565fb567d0096.jpg',
        IdGadgetG: "10",
        rentalPeriod: DateTime.parse("2024-06-15"),
        rentalCost: 1200,
        dayarend: 20, worker: ''
    ),
    Gadget(
        title: 'Аккумулятор для ИК-приёмников DR 60xx',
        photo:
        'https://silverlineclub.ru/wa-data/public/shop/products/20/45/4520/images/805/805.970.jpg',
        IdGadgetG: "11",
        rentalPeriod: DateTime.parse("2024-06-15"),
        rentalCost: 1200,
        dayarend: 20, worker: ''
    ),
  ];

  String _searchText = '';
  List<Gadget> _displayedGadgets = [];

  @override
  void initState() {
    super.initState();
    _displayedGadgets = _gadgets;
  }

  void _searchGadget(String text) {
    setState(() {
      _searchText = text;
      _displayedGadgets = _gadgets.where((gadget) =>
          gadget.title.toLowerCase().contains(_searchText.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text('Оборудование', style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
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
              onChanged: _searchGadget,
              decoration: InputDecoration(
                hintText: 'Поиск оборудования...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _displayedGadgets.length,
              itemBuilder: (context, index) {
                final gadget = _displayedGadgets[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ClientsPage(
                          gadget: gadget,
                        ),
                      ),
                    );
                  },
                  child: Card(
                    margin: EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0), // Добавили отступ
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.deepPurple,
                        child: ClipOval(
                          child: Image.network(
                            gadget.photo,
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Text(gadget.title),
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
                  // Удалите этот код, так как он не нужен.
                  //  Navigator.push(
                  //    context,
                  //    MaterialPageRoute(builder: (context) => GadgetsPage()),
                  //  );
                },
              ),
              IconButton(
                icon: Icon(Icons.people, color: Colors.white),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllClientsPage()),
                  );
                },
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
      ),
    );
  }
}
