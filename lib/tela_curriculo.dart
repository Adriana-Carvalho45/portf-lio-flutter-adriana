import 'package:flutter/material.dart';

class TelaCurriculo extends StatelessWidget {
  const TelaCurriculo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Meu Currículo')),
      body: Container(
        color: const Color(0xFFFCE4EC), // fundo rosa claro
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: const [
            Text(
              'Adriana Fernandes Carvalho',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '📍 Paranaguá, Paraná\n📱 (41) 98444-7737\n✉️ adrianadevmobile50@gmail.com',
              style: TextStyle(fontSize: 16),
            ),
            Divider(height: 30, thickness: 1),
            Text(
              '🎓 Formação Acadêmica',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '- Graduação em Análise e Desenvolvimento de Sistemas\n'
                  '- Pós-graduação em Engenharia de Software\n'
                  '- Pós-graduação em Segurança da Informação',
              style: TextStyle(fontSize: 16),
            ),
            Divider(height: 30, thickness: 1),
            Text(
              '💼 Experiência e Projetos',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '- Desenvolvimento de apps em Flutter\n'
                  '- Projetos publicados em APK\n'
                  '- Interface responsiva e navegação entre telas\n'
                  '- Integração com links externos usando url_launcher',
              style: TextStyle(fontSize: 16),
            ),
            Divider(height: 30, thickness: 1),
            Text(
              '🌐 Redes Sociais',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '- GitHub: github.com/Adriana-Carvalho45\n'
                  '- LinkedIn: linkedin.com/in/adriana-carvalho-723737260',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}