import 'package:flutter/material.dart';
import 'package:meu_pet/views/anuncios/meus_anuncios.dart';
import 'package:meu_pet/views/busca/busca.dart';
import 'package:meu_pet/views/configuracao/configura%C3%A7%C3%B5es.dart';
import 'package:meu_pet/views/pet/inicio.dart';

class PaginaInicial extends StatefulWidget {
  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {

  int _paginaAtual = 0;

  var newTaskCtrl = TextEditingController();
  final List<Widget> _telas = [
    Inicio(),
    Buscas(),
    MeusAnuncios(),
    Configuracoes(),
  ];

  void aoMudarDeAba(int indice) {
    setState(() {
      _paginaAtual = indice;
    });
  }


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(

      body: _telas[_paginaAtual],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _paginaAtual,
        onTap: aoMudarDeAba,
        items: [
          BottomNavigationBarItem(

              icon: Icon(Icons.home),
              label: "Início"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Buscas"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_on),
              label: "Anúncios"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: "Perfil"
          ),

        ],
      ),

    );
  }
}
