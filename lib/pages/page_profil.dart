import 'package:flutter/material.dart';

class PageProfil extends StatelessWidget {
  const PageProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          children: [
            SizedBox(
              height:80,
              child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/logo-esmt.webp"),
                    Text(
                  "Menu",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                  ],
                  
                )
              ),
            ),
            ListTile(
              
              title: Text("Accueil", style: TextStyle(color: Colors.blue)),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.pushNamed(context, "/accueil");
              },
            ),
            //Divider(color: Colors.white),
            SizedBox(height:20),

            ListTile(
              title: Text("Paramètres", style: TextStyle(color: Colors.blue)),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.pushNamed(context, "/parametres");
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(title: Text("Page Profil")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Ceci est la page profil")],
        ),
      ),
    );
  }
}
