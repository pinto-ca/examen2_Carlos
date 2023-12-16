import 'package:examen2_carlos/models/respuesta.dart';
import 'package:examen2_carlos/services/get_book_answer.dart';
import 'package:flutter/material.dart';

class RespuestaProvider extends ChangeNotifier {
  final _apiAnswer = ApiAnswer();
  List<Respuesta> respuestas = [];

  Future<void> loadRespuesta() async {
    await Future.delayed(const Duration(seconds: 5));
    respuestas = await _apiAnswer.getRespuesta();
    notifyListeners();
  }
}
