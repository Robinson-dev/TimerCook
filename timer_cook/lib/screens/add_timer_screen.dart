

import 'package:flutter/material.dart';

class AddTimerScreen extends StatefulWidget{
  const AddTimerScreen({super.key});

  @override
  State<AddTimerScreen> createState()=> _AddTimerScreenState();
}

class _AddTimerScreenState extends State<AddTimerScreen>{
@override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: const Text(" Añadir nuevo Timer "),
    ),
    body: const Center(
    child:  Text("aca va a ir un formilario"),
    ),
    // Podríamos añadir un botón para guardar aquí
    floatingActionButton: FloatingActionButton.extended(
      onPressed: () {
        // Lógica para guardar y volver
      },
      label: const Text("Guardar"),
      icon: const Icon(Icons.save),
    ),
  );
}
}