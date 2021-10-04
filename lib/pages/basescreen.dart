import 'package:applojavirtual/pages/custom_drawer.dart';
import 'package:applojavirtual/pages/page_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BaseScreen extends StatelessWidget {
  //PageController -> controlador de páginas acessadas
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Provider(
        create: (_) => PageManager(pageController),
        child: PageView(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: <Widget>[
            Scaffold(
              drawer: CustomDrawer(),
              appBar: AppBar(
                title: const Text("Loja Virtual"),
              ),
            ),
          ],
        ));
  }
}
