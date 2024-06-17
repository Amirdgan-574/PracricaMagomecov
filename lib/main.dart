import 'package:flutter/material.dart';
import 'package:untitled/Pages/user.dart';
import 'package:untitled/Pages/Gadget.dart';
import 'package:untitled/Pages/initialPage.dart';
import 'package:untitled/Pages/LoginPage.dart';
import 'package:untitled/Pages/GadgetsPage.dart';
import 'package:untitled/Pages/Client.dart'; // Импортируйте Client

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.grey[200],
      ),
      home: InitialPage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Gadget> _comics = [
    Gadget(
      title: 'Молоток',
      photo:
      'https://avatars.dzeninfra.ru/get-zen_doc/1657335/pub_64be5ef3f278c509e42c2be4_64be6245b160380650a72081/scale_1200',
      clients: [
        Client(title: 'Иван Иванов'),
        Client(title: 'Петр Петров'),
      ],
    ),
    Gadget(
      title: 'Дрель',
      photo:
      'https://w7.pngwing.com/pngs/760/1007/png-transparent-hammer-drill-augers-screw-gun-robert-bosch-gmbh-impact-driver-screw-angle-technic-screw.png',
      clients: [
        Client(title: 'Алексей Сидоров'),
        Client(title: 'Мария Кузнецова'),
      ],
    ),
    Gadget(
      title: 'Отвёртка',
      photo:
      'https://amk-stroy.su/wp-content/uploads/2020/09/shlitsevaya-otvertka-chto-eto-takoe-2.jpg',
      clients: [
        Client(title: 'Ольга Иванова'),
        Client(title: 'Дмитрий Сергеев'),
      ],
    ),
    Gadget(
      title: 'Шуроповёрт',
      photo:
      'https://img.staticbg.com/images/oaupload/banggood/images/CB/33/e6e65054-45e1-4e86-a4ea-3d2014846b94.jpg',
      clients: [
        Client(title: 'Екатерина Петрова'),
        Client(title: 'Андрей Кузнецов'),
      ],
    ),
    Gadget(
      title: 'Лом',
      photo:
      'https://papik.pro/uploads/posts/2023-02/thumbs/1675816360_papik-pro-p-lom-risunok-48.png',
      clients: [
        Client(title: 'Светлана Сидорова'),
        Client(title: 'Александр Иванов'),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Оборудование', style: TextStyle(color: Colors.black)),
      ),
      backgroundColor: Theme
          .of(context)
          .scaffoldBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: _comics.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_comics[index].title),
                  leading: CircleAvatar(
                    backgroundColor: Colors.deepPurple,
                    child: ClipOval(
                      child: Image.network(
                        _comics[index].photo,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GadgetsPage(gadget: _comics[index])),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}