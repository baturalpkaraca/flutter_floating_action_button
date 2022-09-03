import 'package:flutter/material.dart';
import 'package:progress_state_button/iconed_button.dart';
import 'package:progress_state_button/progress_button.dart';

void main() => runApp(Ders00());

class Ders00 extends StatefulWidget {
  @override
  State<Ders00> createState() => _Ders00State();
}

class _Ders00State extends State<Ders00> {
  int sayac = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ders-00',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          title: Text('My First Web Application'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(sayac.toString(), style: TextStyle(fontSize: 64)),
              Container(
                height: 100,
              ),
              buildFAB(),
            ],
          ),
        ),
      ),
    );
  }

  Container buildFAB() {
    return Container(
      child: FloatingActionButton(
          onPressed: () {
            setState(() {
              sayac++;
            });
          },
          child: Text('Sayacı arttır.', style: TextStyle(fontSize: 36)),
          backgroundColor: Colors.deepPurple,
          tooltip: 'Tıkla'),
      height: 300,
      width: 300,
    );
  }
}
