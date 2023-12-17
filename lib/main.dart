import 'package:examen2_carlos/providers/respuesta_provider.dart';
import 'package:examen2_carlos/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ListaProvider()),
      ],
      child: MaterialApp(
        title: 'Libreria',
        theme: ThemeData(
          primarySwatch: Colors.yellow,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(
            headline6: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.library_books),
                SizedBox(width: 10),
                Text('LIBRERIA'),
              ],
            ),
          ),
          body: BookListScreen(),
        ),
      ),
    );
  }
}
