import 'package:examen2_carlos/models/respuesta.dart';
import 'package:flutter/material.dart';

class DetalleLibros extends StatelessWidget {
  final Libros book;
  DetalleLibros({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 4, 0, 0),
      appBar: AppBar(
        title: Text(
          'Informacion del Libro',
          style: TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 248, 239, 0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Título: ${book.title}',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 255, 255, 255),
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'ID: ${book.id != null ? book.id : 'Sin información'}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Año: ${book.year != null ? book.year.toString() : 'Sin información'}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Editorial: ${book.publisher ?? 'Sin información'}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'ISBN: ${book.isbn ?? 'Sin información'}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Páginas: ${book.pages != null ? book.pages.toString() : 'Sin información'}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Notas: ${book.notes.isNotEmpty ? book.notes.join(', ') : 'Sin información'}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Descripción: ',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              book.description ?? 'Sin información',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'VILLANOS:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                decoration: TextDecoration.underline,
              ),
            ),
            ...book.villains.map(
              (villain) => Row(
                children: [
                  Icon(Icons.supervised_user_circle, color: Colors.black),
                  SizedBox(width: 5),
                  Text(
                    villain['name'] ?? 'Desconocido',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
