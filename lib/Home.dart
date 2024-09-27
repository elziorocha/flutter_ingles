import 'package:flutter_aula2609/Bicho.dart';
import 'package:flutter_aula2609/Numeros.dart';
import 'package:flutter_aula2609/Vogais.dart';
import 'package:flutter_aula2609/Videos.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();

    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "Aprenda inglês agora curso 105% gratuito insira seu cpf"),
        bottom: TabBar(
          indicatorWeight: 4,
          indicatorColor: Colors.black,
          labelStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          controller: _tabController,
          tabs: const <Widget>[
            Tab(text: "Bichos"),
            Tab(text: "Números"),
            Tab(text: "Vogais"),
            Tab(text: "Vídeos"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Bicho(),
          Numeros(),
          // Vogais(),
          // Videos(),
        ],
      ),
    );
  }
}
