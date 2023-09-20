import 'package:flutter/material.dart';

class AnaSayfa extends StatefulWidget {
 final String? title;
  AnaSayfa({super.key, this.title});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text(widget.title.toString()),));
  }
}
