import 'package:flutter/material.dart';
import 'package:fmarket/kategori.dart';

class Urunler extends StatefulWidget {
  @override
  _UrunlerState createState() => _UrunlerState();
}

class _UrunlerState extends State<Urunler> with SingleTickerProviderStateMixin {
  TabController televizyonKontrolcusu;

  @override
  void initState() {
    super.initState();
    televizyonKontrolcusu = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TabBar(
            controller: televizyonKontrolcusu,
            indicatorColor: Colors.red[400],
            labelColor: Colors.red[400],
            unselectedLabelColor: Colors.grey,
            isScrollable: true,
            labelStyle: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500,),
            tabs: [
              Tab(
                child: Text('Temel gida'),
              ),
              Tab(
                child: Text('Sekerleme'),
              ),
              Tab(
                child: Text('Icecekler'),
              ),
              Tab(
                child: Text('Temizlik'),
              ),
            ],
          ),
          Expanded(
            child: Container(
              child: TabBarView(
                controller: televizyonKontrolcusu,
                children: [
                  Kategori(
                    kategori: 'temel gıda',
                  ),
                  Kategori(
                    kategori: 'şekerleme',
                  ),
                  Kategori(
                    kategori: 'içecekler',
                  ),
                  Kategori(
                    kategori: 'temizlik',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



