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

// Widget principal
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});
  final String title;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

// Implementa o estado da widget HomeScreen
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //inclui apBar
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Bem-vindo ao Seventh App",
            style: TextStyle(fontSize: 30)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // inserindo o texto
            const Text("Olá, Mundo!", style: TextStyle(fontSize: 20)),
            // Inserindo o botao Clique Aqui
            ElevatedButton(
              onPressed: () {
                // Ao clicar, mostra mensagem em uma SnackBar
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Botão Clicado!')),
                );
              },
              child: const Text('Clique Aqui'),
            ),
            // Inserindo o botao Ir para a segunda tela
            ElevatedButton(
              onPressed: () {
                //ao clicar, redireciona para a SecondScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen()),
                );
              },
              child: const Text('Ir para a Segunda Tela'),
            )
          ],
        ),
      ),
    );
  }
}

// Segunda tela
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // inclui appBar
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title:
            const Text("Esta é a segunda tela", style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
