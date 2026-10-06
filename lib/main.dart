import 'package:flutter/material.dart';
import 'widgets/bloco_estatistica.dart';

void main() {
  runApp(const MeuLayoutApp());
}

class MeuLayoutApp extends StatelessWidget {
  const MeuLayoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PPDM - Layout Widgets',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const TelaDashboard(),
    );
  }
}

class TelaDashboard extends StatelessWidget {
  const TelaDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PPDM - Dashboard de Observações'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Resumo das Observações',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 12.0,
              mainAxisSpacing: 12.0,
              children: const [
                BlocoEstatistica(
                  icone: Icons.flutter_dash,
                  valor: '124',
                  legenda: 'Aves Vistas',
                  corFundo: Color(0xFFB2DFDB),
                ),
                BlocoEstatistica(
                  icone: Icons.place,
                  valor: '18',
                  legenda: 'Locais Visitados',
                  corFundo: Color(0xFFE0F2F1),
                ),
                BlocoEstatistica(
                  icone: Icons.camera_alt,
                  valor: '45',
                  legenda: 'Fotos',
                  corFundo: Color(0xFFB2DFDB),
                ),
                BlocoEstatistica(
                  icone: Icons.note_alt,
                  valor: '89',
                  legenda: 'Anotações',
                  corFundo: Color(0xFFE0F2F1),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
