import 'package:flutter/material.dart';

class PageAccueil extends StatelessWidget {
  const PageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 37, 189, 50),
        foregroundColor: Colors.white,
        title: const Text("App INGC ESMT"),
        centerTitle: true,
        //leading:Icon(Icons.person),
        leading:IconButton(
          icon: const Icon(Icons.person),
          tooltip: 'Profil',
          onPressed: () {
            print("Page de profil ici");
            // Instruction pour naviguer vers la page de profil
            Navigator.pushNamed(context, "/profil");
          },
        ),
        actions: [
            IconButton(
              icon: const Icon(Icons.search),
              tooltip: 'Rechercher',
              onPressed: () {
                // Instruction pour naviguer vers la page de recherche
                print("Page de recherche ici");
              },

            ),
            IconButton(
              icon: const Icon(Icons.settings),
              tooltip: 'Paramètres',
              onPressed: () {
                // Instruction pour naviguer vers la page de paramètres
                print("Page de paramètres ici");
              }
            ,)
        ]
        
      ),
      body: const Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text("Bienvevenu"),
            Text("Ceci est la page d'accueil"),
            Text("Ceci est la page d'accueil "),
            Text("Ceci est la page d'accueil "),
            Text("Ceci est la page d'accueil "),
          ],
        ),
      ),
      
   );
  }
}