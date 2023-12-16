import 'package:examen2_carlos/providers/book_list_provider.dart';
import 'package:examen2_carlos/services/get_book_answer.dart';
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
        ChangeNotifierProvider(create: (context) => BookListProvider()),
      ],
      child: MaterialApp(
        title: 'Stephen King Library',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: 
      ),
    );
  }
}
