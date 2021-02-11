import 'package:flutter/material.dart';

class UrunDetay extends StatelessWidget {
  final String urunAdi;
  final String fiyat;
  final String resimLinki;
  final bool mevcut;

  const UrunDetay({Key key, this.urunAdi, this.fiyat, this.resimLinki, this.mevcut}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Hero(
                tag: resimLinki,
                child: Image(
                  image: NetworkImage(
                    resimLinki,
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.red[400],
                  size: 40.0,
                ),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Column(
            children: [
              Text(
                urunAdi,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                fiyat,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[400],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Text(
              ' Urun ile ilgili acıklamalar burada yer alacak. Urun ile ilgili acıklamalar burada yer alacak. Urun ile ilgili acıklamalar burada yer alacak',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Container(
              width: MediaQuery.of(context).size.width - 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: mevcut ? Colors.red[400] : Colors.black,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Center(
                child: Text(
                  mevcut ? 'Sepete Ekle' : 'Stokta Yok',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
