import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(const MyImagen());

class MyImagen extends StatelessWidget {
  const MyImagen({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: const Text(
            'Mis Imagenes',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Gabriel Montes Mat:22308051281276 Gpo 6J',
                style: (TextStyle(fontSize: 15, color: Colors.black)),
              ),
              Image.network(
                'https://i.etsystatic.com/38762908/r/il/66a68b/4389113676/il_570xN.4389113676_ljdk.jpg',
                width: 200,
                height: 200,
              ), // Primera imagen
              const SizedBox(height: 5),
              const Text(
                'Teclas de Piano',
                style: (TextStyle(fontSize: 20, color: Colors.black87)),
              ),
              const SizedBox(height: 20), // Espacio entre las imágenes
              Image.network(
                'https://r2.gear4music.com/media/67/671442/600/preview.jpg',
                width: 200,
                height: 200,
              ),
              const SizedBox(height: 10),
              const Text(
                'Piano Completo',
                style: (TextStyle(fontSize: 20, color: Colors.black54)),
              ), // Espacio entre las imágenes
              // Segunda imagen
            ],
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Center(
        child: Text(
          'Hello, World!',
        ),
      ),
    );
  }
}
