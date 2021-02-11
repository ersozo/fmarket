import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'urunler.dart';
import 'sepetim.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int _aktifIcerikNo = 0;
  List<Widget> _icerikler;

  @override
  void initState() {
    super.initState();
    // ignore: unused_local_variable
    _icerikler = [
      Urunler(),
      Sepetim(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.red[400],
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Ucarak Gelsin',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        centerTitle: true,
      ),
      body: _icerikler[_aktifIcerikNo],
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Ali Cihan Yıldırım'),
              accountEmail: Text('acy3@gmail.com'),
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2017/06/21/15/57/ruben-2427641__480.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.red[400],
              ),
            ),
            ListTile(
              title: Text('Siparişlerim'),
              onTap: () {},
            ),
            ListTile(
              title: Text('İndirimlerim'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Ayarlar'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Çıkış Yap'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
          padding: EdgeInsets.all(0.0),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _aktifIcerikNo,
        selectedItemColor: Colors.red[400],
        unselectedItemColor: Colors.grey[600],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Urunler',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Sepetim',
          )
        ],
        onTap: (int tiklananButonPozisyonNo) {
          setState(() {
            _aktifIcerikNo = tiklananButonPozisyonNo;
          });
        },
      ),
    );
  }
}
