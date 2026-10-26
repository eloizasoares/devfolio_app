
import 'package:flutter/material.dart';

void main() {
  runApp(const DevFolioApp());
}

class DevFolioApp extends StatelessWidget {
  const DevFolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DevFolio',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF6750A4),
        scaffoldBackgroundColor: const Color(0xFFF5F3FA),
      ),
      home: const PerfilScreen(),
    );
  }
}

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'DevFolio',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFFF5F3FA),
        centerTitle: false,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 440),
            child: Card(
              elevation: 5,
              shadowColor: Colors.deepPurple.withValues(alpha: 0.2),
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // ===== CABEÇALHO COM GRADIENTE =====
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 28),
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF6750A4),
                          Color(0xFF9A7BE7),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Column(
                      children: [
                        const CircleAvatar(
                          radius: 52,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 47,
                            backgroundColor: Color(0xFFE9DFFF),
                            child: Icon(
                              Icons.code_rounded,
                              size: 52,
                              color: Color(0xFF6750A4),
                            ),
                          ),
                        ),
                        const SizedBox(height: 14),
                        const Text(
                          'Gabi e Eloh',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'Desenvolvedoras em formação',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.2),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white70),
                          ),
                          child: const Text(
                            'DEVFOLIO MEMBER',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // ===== INFORMAÇÕES DO DESENVOLVEDOR =====
                  Padding(
                    padding: const EdgeInsets.all(22),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Sobre nós',
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Estudantes de tecnologia, interessadas '
                          'em programação, desenvolvimento de aplicativos '
                          'e criação de soluções digitais.',
                          style: TextStyle(
                            height: 1.5,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 22),
                        const Text(
                          'Nossas habilidades',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: const [
                            Chip(
                              avatar: Icon(Icons.phone_android, size: 17),
                              label: Text('Flutter'),
                            ),
                            Chip(
                              avatar: Icon(Icons.code, size: 17),
                              label: Text('Dart'),
                            ),
                            Chip(
                              avatar: Icon(Icons.web, size: 17),
                              label: Text('HTML/CSS'),
                            ),
                            Chip(
                              avatar: Icon(Icons.storage, size: 17),
                              label: Text('Banco de dados'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 22),
                        const Divider(),
                        const SizedBox(height: 8),
                        const Row(
                          children: [
                            Icon(
                              Icons.school_outlined,
                              color: Color(0xFF6750A4),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                'Estudantes de Desenvolvimento',
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        const Row(
                          children: [
                            Icon(
                              Icons.verified_outlined,
                              color: Color(0xFF6750A4),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                'Portfólio de projetos pessoais',
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

