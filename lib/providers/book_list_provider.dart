import 'package:examen2_carlos/models/respuesta.dart';
import 'package:examen2_carlos/providers/respuesta_provider.dart';
import 'package:flutter/material.dart';

class BookListProvider with ChangeNotifier {
  final BookService _bookService = BookService();
  List<Book> _books = [];

  List<Book> get books => _books;

  void fetchBooks() async {
    _books = (await _bookService.getBooks()) as List<Book>;
    notifyListeners();
  }
}
