import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MeusProjetos extends StatelessWidget {
  const MeusProjetos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Meus Projetos')),
      body: Container(
        color: const Color(0xFFE3F2FD), // fundo azul claro
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: const [
            ProjetoCard(
              nome: 'BancoAmérica SA',
              descricao: 'Aplicativo bancário desenvolvido como projeto pessoal.',
              link: 'https://drive.google.com/file/d/1wEfk9HJc7X-cJagY_qTaWLcsjuB7WSVP/view?usp=drivesdk',
            ),
            ProjetoCard(
              nome: 'Projeto Financeiro',
              descricao: 'Aplicativo de controle financeiro desenvolvido como parte dos meus estudos.',
              link: 'https://drive.google.com/file/d/1tnAVCbxK0fmFss9UMKeLzqhefb_Dis8g/view?usp=drivesdk',
            ),
            ProjetoCard(
              nome: 'VideosCar',
              descricao: 'App multimídia com tela inicial e 11 clipes em vídeo (MP4).',
              link: 'https://drive.google.com/file/d/1qZP0REIoJyYy0NGi8-iIeXhZqStt9GI2/view?usp=drivesdk',
            ),
          ],
        ),
      ),
    );
  }
}

class ProjetoCard extends StatelessWidget {
  final String nome;
  final String descricao;
  final String link;

  const ProjetoCard({
    super.key,
    required this.nome,
    required this.descricao,
    required this.link,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(nome,
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(descricao),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () async {
                final uri = Uri.parse(link);
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Não foi possível abrir o link')),
                  );
                }
              },
              child: const Text('Ver APK'),
            ),
          ],
        ),
      ),
    );
  }
}