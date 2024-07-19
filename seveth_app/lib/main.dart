import 'package:flutter/material.dart';

void main() {
  runApp(const SeventhApp());
}

class SeventhApp extends StatelessWidget {
  const SeventhApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seventh App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 135, 31, 139)),
        useMaterial3: true,
      ),
      home: const HomeScreen(title: 'Home Screen'),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});
  final String title;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Bem-vindo ao Seventh App",
            style: TextStyle(fontSize: 30)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Olá, Mundo!", style: TextStyle(fontSize: 20)),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Botão Clicado!')),
                );
              },
              child: const Text('Clique Aqui'),
            )
          ],
        ),
      ),
    );
  }
}
