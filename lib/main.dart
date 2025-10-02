//import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tasties',
      theme: ThemeData(
        // This is the theme of your application.
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 1, 0, 0)),
      ),
      home: const MyHomePage(title: 'Tasties snacks'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
        toolbarHeight: 150, // plus haut
        title: Row(
          children: [
            const SizedBox(width: 40),
            Image.asset(
              'assets/images/logo.png',
              height: 180,
              width: 150, // 👈 taille plus grande
              fit: BoxFit.contain,
             
            ),
           // const SizedBox(width: 20),

            // Expanded pour centrer ou cacher selon la taille
            Expanded(
              child: Center(
                child: LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 400) {
                    // Grand écran : boutons centrés
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(onPressed: () {}, child: const Text('Home', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)),
                        const SizedBox(width: 30),
                        TextButton(onPressed: () {}, child: const Text('Shop', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)),
                        const SizedBox(width: 30),
                        TextButton(onPressed: () {}, child: const Text('About us', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)),
                        const SizedBox(width: 30),
                        TextButton(onPressed: () {}, child: const Text('Contact us', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)),
                      ],
                    );
                  } else {
                    // Petit écran : bouton menu
                    return PopupMenuButton(
                      icon: const Icon(Icons.menu),
                      itemBuilder: (context) => [
                        const PopupMenuItem(child: Text('Home')),
                        const PopupMenuItem(child: Text('About us')),
                        const PopupMenuItem(child: Text('Snacks')),
                        const PopupMenuItem(child: Text('Contact us')),
                      ],
                    );
                  }
                },
              )),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.login)),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart),
              ),
            ],
          ),
          const SizedBox(width: 100),// eviter que les derniers icones ne touche le bord de l'ecran
        ],

        centerTitle: false,
      ),
       body:Stack(
            children: [
               Positioned.fill(
                child: Image.asset(
                'assets/images/background_1.png',
                width: double.infinity,
                fit: BoxFit.cover,
                opacity: const AlwaysStoppedAnimation(0.7), )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  // column of the image
                          Column(
                          children: [
                           const SizedBox(height: 300),
                           Image.asset(
                          'assets/images/snacks_together.png',
                           height: 250,
                           fit: BoxFit.contain,
                      ),
                    ],
                  ),
                         const SizedBox(width: 100), // space between image and text
                  // column of the text
                         SingleChildScrollView(
                          child:
                          Column(
                          children: [
                           SizedBox(height: 100),
                           Text(
                            'TASTIES',
                            style: GoogleFonts.berkshireSwash(
                              color: Colors.deepOrange,
                              fontSize: 80,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                            SizedBox(height: 10),
                            Text(
                            'One snack thousand memories!.\n',
                            style: TextStyle(
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                            SizedBox(height: 0),
                            Text(
                            textAlign: TextAlign.center,
                            'Enjoy African snacks with tropical \n'
                            'vibes and Cameroonian flavors.',
                            style: GoogleFonts.berkshireSwash(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                            SizedBox(height: 50),
                            SizedBox(height: 50),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(200, 80),
                                backgroundColor: Colors.green,
                                foregroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              ),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.shopping_bag,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'Shop Now',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                 )
                ],
              ),
            ],
          ),
        );
       }
}
