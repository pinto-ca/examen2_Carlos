import 'package:dio/dio.dart';
import 'package:examen2_carlos/models/respuesta.dart';

class BookService {
  final Dio _dio = Dio();
  final String _baseUrl = 'https://stephen-king-api.onrender.com';

  Future<List<Book>> getBooks() async {
    try {
      final response = await _dio.get(
        '$_baseUrl/api/books',
        options: Options(
          validateStatus: (status) {
            return status! < 500;
          },
        ),
      );

      print('Response status code: ${response.statusCode}');
      print('Response data: ${response.data}');

      if (response.statusCode == 200) {
        final List<dynamic> bookDataList = response.data['data'];

        if (bookDataList.isNotEmpty) {
          return bookDataList.map((book) => Book.fromJson(book)).toList();
        } else {
          throw Exception('No se encontraron libros');
        }
      } else {
        throw Exception('Error al cargar los libros: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching books: $e');
      throw Exception('Error fetching books: $e');
    }
  }
}
