import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Segunda Atividade'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get color => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: const [
          // 1
          _GridViewItem(
              color: Color.fromARGB(255, 15, 248, 132), text: 'B'),
          // 2
          _GridViewItem(color: Color.fromRGBO(246, 255, 0, 1), text: 'R'),
          // 3
          _GridViewItem(
              color: Color.fromARGB(255, 15, 248, 132), text: 'A'),
          // 4
          _GridViewItem(
              color: Color.fromARGB(246, 255, 251, 1), text: '👍'),
          // 5
          _GridViewItem(
              color: Color.fromARGB(255, 0, 106, 255), text: 'ORDEM E PROGRESSO'),
          // 6
          _GridViewItem(
              color: Color.fromARGB(255, 246, 255, 0), text: '😊'),
          // 7
          _GridViewItem(
              color: Color.fromARGB(255, 15, 248, 132), text: 'S'),
          // 8
          _GridViewItem(
              color: Color.fromARGB(255, 246, 255, 0), text: 'I'),
          _GridViewItem(
              color: Color.fromARGB(255, 15, 248, 132), text: 'L'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.sentiment_very_satisfied),
      ),
    );
  }
}

class _GridViewItem extends StatelessWidget {
  const _GridViewItem({super.key, required this.color, required this.text});
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: color,
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(2.1), 
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            color: Color.fromARGB(255, 5, 5, 5), // Cor do texto
          ),
        ),
      ),
    );
  }
}
