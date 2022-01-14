import 'dart:math';
import 'package:flutter/material.dart';

class PersegiResult extends StatelessWidget{


  PersegiResult({required this.panjang_persegi, required this.lebar_persegi});
final int panjang_persegi;
final int lebar_persegi;

  @override
  Widget build(BuildContext context) {
    double hasil = (panjang_persegi * lebar_persegi * 1.0);

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
                'Luas Persegi Adalah :',
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