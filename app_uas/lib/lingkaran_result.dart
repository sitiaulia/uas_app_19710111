import 'dart:math';
import 'package:flutter/material.dart';

class LingkaranResult extends StatelessWidget{


  LingkaranResult({required this.jari_jari});
final int jari_jari;

  @override
  Widget build(BuildContext context) {
    double hasil = (3.14 * jari_jari * jari_jari);

    return Scaffold(
      backgroundColor: Colors.amberAccent.shade100,
        appBar: new AppBar(
          backgroundColor: Colors.deepOrangeAccent.shade400,
          title: new Text('Hasil'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20, child: Container(
                color: Colors.white,
              ),),

              Text(
                'Luas Lingkaran Adalah :',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                   color: Colors.black,
                ),
              ),
              Text(
                ' $hasil ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.black
                ),
              )
            ],
          ),
        ),

    );
  }

}