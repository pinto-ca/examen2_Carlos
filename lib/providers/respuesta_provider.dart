import 'package:examen2_carlos/models/respuesta.dart';
import 'package:examen2_carlos/services/get_book_answer.dart';
import 'package:flutter/material.dart';

class BookListProvider with ChangeNotifier {
  final BookService _bookService = BookService();
  List<Libros> _books = [];
  List<Libros> get books => _books;
  void fetchBook() async {
    _books = await _bookService.getBooks();
    notifyListeners();
  }
}
