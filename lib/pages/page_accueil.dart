import 'package:flutter/material.dart';

class PageAccueil extends StatelessWidget {
  const PageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child:ListView(
          children:[
            SizedBox(
              height:80,
              child:DrawerHeader(
                decoration:BoxDecoration(color: Colors.blueAccent),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children:[
                    Image.asset("assets/images/logo-esmt.webp"),
                    Text("Menu")
                   
                  ]
                )
              )

            ),
            ListTile(
              tileColor: Colors.amber,
              trailing: Icon(Icons.chevron_right),
              title:Text("Profil"),
              onTap: (){
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  "/profil",
                  (predicate)=>false,
                  );

              },
            ),
            //Divider(color: Colors.white),
            SizedBox(height:20,),
             ListTile(
              tileColor: Colors.amber,
              trailing: Icon(Icons.chevron_right),
              title:Text("Paramétre"),
              onTap: (){
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  "/paramétre",
                  (predicate)=>false,
                  );

              },
            ),
            
          ]
        ),
      ),
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
        // actions: [
        //     IconButton(
        //       icon: const Icon(Icons.search),
        //       tooltip: 'Rechercher',
        //       onPressed: () {
        //         // Instruction pour naviguer vers la page de recherche
        //         print("Page de recherche ici");
        //       },

        //     ),
        //     IconButton(
        //       icon: const Icon(Icons.settings),
        //       tooltip: 'Paramètres',
        //       onPressed: () {
        //         // Instruction pour naviguer vers la page de paramètres
        //         print("Page de paramètres ici");
        //       }
        //     ,)
        // ]
        
      ),
      body:  Center(
        child:Container(
          margin:EdgeInsets.all(20),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border:Border.all(color:Colors.green,width:4),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  margin:EdgeInsets.all(10),
                  child: Card(
                    elevation: 10,
                    child: Image.asset("assets/images/logo-esmt.webp")),
                ),
                Container(width:200,
                  height: 200,
                  color: Colors.red),
                   Container(
                    margin:EdgeInsets.all(20),
                    child: ClipRRect(borderRadius: BorderRadius.circular(50),
                      child: Image.asset("assets/images/logo-esmt.webp"))),
                  Container(width: 200,height: 200, color: Colors.purple ),
                Text("Bienvevenu"),
                Text("Ceci est la page d'accueil"),
                Text("Ceci est la page d'accueil "),
                Text("Ceci est la page d'accueil "),
                Text("Ceci est la page d'accueil "),
                 Container(
                  decoration: BoxDecoration(
                    border:Border.all(color: Colors.black,width:3),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Image.asset("assets/images/logo-esmt.webp")),
              ],
            ),
          ),
        ),
      ),
      
   );
  }
}