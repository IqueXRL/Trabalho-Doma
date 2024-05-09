import 'package:flutter/material.dart';
import 'mensagens.dart';
import 'lembretes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wear OS App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wear OS App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _navigateToMensagensPage(context),
              child: Text('Mensagens'),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () => _navigateToLembretesPage(context),
              child: Text('Lembretes'),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToMensagensPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MensagensPage()),
    );
  }

  void _navigateToLembretesPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LembretesPage()),
    );
  }
}
