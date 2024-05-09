import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Mensagem {
  final String remetente;
  final String conteudo;

  Mensagem({required this.remetente, required this.conteudo});
}

List<Mensagem> mensagens = [
  Mensagem(
    remetente: 'Caique',
    conteudo: 'Ta na hora de entregar o trabalho! Não vai esquecer...',
  ),
  Mensagem(
    remetente: 'Aline',
    conteudo: 'Amor, comprou o café?',
  ),
  Mensagem(
    remetente: 'Atom',
    conteudo: 'Row row',
  ),
  // Adicione mais mensagens conforme necessário
];

class MensagensPage extends StatelessWidget {
  final FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mensagens'),
      ),
      body: ListView.builder(
        itemCount: mensagens.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(
                mensagens[index].remetente,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(mensagens[index].conteudo),
              onTap: () {
                speak("mensagem de:" + mensagens[index].remetente);
                speak(mensagens[index].conteudo);
              },
            ),
          );
        },
      ),
    );
  }

  void speak(String text) async {
    await flutterTts.speak(text);
  }
}

void main() {
  runApp(
    MaterialApp(
      home: MensagensPage(),
    ),
  );
}
