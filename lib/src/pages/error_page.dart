import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Error 404"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.warning_amber,
              size: 200,
              color: Colors.red,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "No se encontro la pagina",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              Navigator.pop(context);
            }, child: const Text("Volver al menu"))
          ],
        ),
      ),
    );
  }
}
