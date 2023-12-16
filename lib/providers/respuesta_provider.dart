import 'package:dio/dio.dart';
import 'package:examen2_carlos/models/respuesta.dart';

class BookService {
  final Dio _dio = Dio();
  final String _baseUrl = 'https://stephen-king-api.onrender.com';

  Future<Book> getBooks() async {
    final response = await _dio.get('$_baseUrl/books');
    final respuestaBook = Book.fromJson(response.data);
    return respuestaBook;
  }
}
