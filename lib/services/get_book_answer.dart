import 'dart:convert';
import 'package:examen2_carlos/models/respuesta.dart';
import 'package:http/http.dart' as http;

class ApiAnswer {
  final String url = "https://stephen-king-api.onrender.com";

  Future<List<Respuesta>> getRespuesta() async {
    final response = await http.get(Uri.parse('$url/api/books'));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      List<Respuesta> respuestas =
          data.map((item) => Respuesta.fromJson(item)).toList();
      return respuestas;
    } else {
      throw Exception('Error al cargar los datos desde la API');
    }
  }
}
