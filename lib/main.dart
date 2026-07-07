import 'package:app_ingc1/pages/page_accueil.dart';
import 'package:app_ingc1/pages/page_parametres.dart';
import 'package:app_ingc1/pages/page_profil.dart';
import 'package:flutter/material.dart';

//runApp permet de lancer l'application Flutter et d'afficher le widget
//statelesswidget est un widget qui est statique et ne change pas d'état
//statefulwidget est un widget qui est dynamique et peut changer d'état
//la role de la blaise title est l onglet du navigateur

void main() {
  runApp(const MonApplication());
}

class MonApplication extends StatelessWidget {
  const MonApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'premiere application Flutter',
      home: PageAccueil(),
      routes: {
        "/accueil": (context) => PageAccueil(),
        "/profil": (context) => PageProfil(),
        "/parametres": (context) => PageParametres(),
      },
      onUnknownRoute: (context) => MaterialPageRoute(
        builder: (context) => PageAccueil(),
      ),
    );
  }
}