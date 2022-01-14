import 'package:flutter/material.dart';
import 'persegi_result.dart';
import 'lingkaran_result.dart';

void main() => runApp(new MaterialApp(
    home: new Homeview(),
    routes: <String, WidgetBuilder>{
      'HalLuasPersegi' : (BuildContext context) => new HalLuasPersegi(),
      'HalLuasLingkaran' : (BuildContext context) => new HalLuasLingkaran(),
      'HalProfile' : (BuildContext context) => new HalProfile(),

    },
));

class Homeview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amberAccent.shade100,
        appBar: new AppBar(
          backgroundColor: Colors.deepOrangeAccent.shade400,
          title: new Text('Home view'),
        ),
        body: SafeArea(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(Icons.crop_square_outlined),
                title: new TextButton(child: Text('Hitung Luas Persegi'),
                onPressed: () {
                  Navigator.pushNamed(context, 'HalLuasPersegi');
                },
                ),
              ),
            ),

            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(Icons.circle_outlined),
                title: new TextButton(child: Text('Hitung Luas Lingkaran'),
                onPressed: () {
                  Navigator.pushNamed(context, 'HalLuasLingkaran');
                },
                ),
              ),
            ),

            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(Icons.square_foot_outlined),
                title: new TextButton(child: Text('Profile'),
                onPressed: () {
                  Navigator.pushNamed(context, 'HalProfile');
                },
                ),
              ),
            ),


            
          ],
        ),),
      ),
    );
  }
}

class HalLuasPersegi extends StatefulWidget {
  @override
  _LuasPersegi createState() => new _LuasPersegi();
}

class _LuasPersegi extends State<HalLuasPersegi>{
  int panjang = 0;
    int lebar = 0;

    @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.amberAccent.shade100,
        appBar: new AppBar(
          backgroundColor: Colors.deepOrangeAccent.shade400,
          title: new Text('Menghitung Luas Persegi'),
        ),
        body: ListView(
          children: <Widget>[
            new Container(
              padding: new EdgeInsets.all(20.0),
              child: new Column(
                children: <Widget>[

                  new Padding(padding: new EdgeInsets.only(top: 20.0)),

                  new Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          onChanged: (txt){
                            setState(() {
                              panjang = int.parse(txt);
                            });
                          },

                          keyboardType: TextInputType.number,
                          maxLength: 5,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          decoration: InputDecoration(
                            labelText: 'Panjang Persegi',
                            suffix: Text('cm'),
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10.0)
                            ),
                            hintText: 'Panjang'),
                        ),
                        ),  
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(child: TextField(
                          onChanged: (txt){
                            setState(() {
                              lebar = int.parse(txt);
                            });
                          },
                          keyboardType: TextInputType.number,
                          maxLength: 5,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          decoration: InputDecoration(
                            labelText: 'Lebar Persegi',
                            suffix: Text('cm'),
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10.0)
                            ),
                            hintText: 'Lebar'),
                        ),
                        ),
                        ],
                  ),
                  new Padding(padding: new EdgeInsets.only(top: 20.0)),

                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                    child: ElevatedButton(
                      onPressed: (){
                        var route = new MaterialPageRoute(
                          builder: (BuildContext) => 
                          new PersegiResult(panjang_persegi: panjang, lebar_persegi: lebar),
                          );
                          Navigator.of(context).push(route);
                      },
                    child: Text(
                      'Hitung luas',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
    );
  }
}


class HalLuasLingkaran extends StatefulWidget{
  @override
_LuasLingkaran createState() => new _LuasLingkaran();
}

class _LuasLingkaran extends State<HalLuasLingkaran>{
  int jari = 0;

    @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.amberAccent.shade100,
        appBar: new AppBar(
          backgroundColor: Colors.deepOrangeAccent.shade400,
          title: new Text('Menghitung Luas Lingkaran'),
        ),
        body: ListView(
          children: <Widget>[
            new Container(
              padding: new EdgeInsets.all(20.0),
              child: new Column(
                children: <Widget>[

                  new Padding(padding: new EdgeInsets.only(top: 20.0)),

                  new Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          onChanged: (txt){
                            setState(() {
                              jari = int.parse(txt);
                            });
                          },

                          keyboardType: TextInputType.number,
                          maxLength: 5,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          decoration: InputDecoration(
                            labelText: 'Jari Jari Lingkaran',
                            suffix: Text('cm'),
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10.0)
                            ),
                            hintText: 'Jari'),
                        ),
                        ),  
                        SizedBox(
                          width: 10,
                        ),
                        ],
                  ),
                  new Padding(padding: new EdgeInsets.only(top: 20.0)),

                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                    child: ElevatedButton(
                      onPressed: (){
                        var route = new MaterialPageRoute(
                          builder: (BuildContext) => 
                          new LingkaranResult(jari_jari: jari),
                          );
                          Navigator.of(context).push(route);
                      },
                    child: Text(
                      'Hitung luas',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
    );
  }
}

class HalProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
    backgroundColor: Colors.amberAccent.shade100,
        appBar: new AppBar(
          backgroundColor: Colors.deepOrangeAccent.shade400,
          title: new Text('Profile Page'),
        ), 
        body: SafeArea(child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Text('Nama  : Siti Aulia Urrahmah', style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightGreenAccent.shade400,
              fontWeight: FontWeight.bold,
            ),),

            Text('Npm   : 19710111', style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightGreenAccent.shade400,
              fontWeight: FontWeight.bold,
            ),),

            Text('Kelas : 5A Non Reg BJB', style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightGreenAccent.shade400,
              fontWeight: FontWeight.bold,
            ),),

            Text('Alamat: jl.Pahlawan Desa Banua Halat Kiri RT/RW 002/001', style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightGreenAccent.shade400,
              fontWeight: FontWeight.bold,
            ),),

            Text('No hp : 082153660823', style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightGreenAccent.shade400,
              fontWeight: FontWeight.bold,
            ),),

          ],
        )), 
    );
  }
}