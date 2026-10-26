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

// =====================================================
// TELA 01 - PERFIL E CRACHA DAS DESENVOLVEDORAS
// =====================================================

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
        actions: [
          IconButton(
            icon: const Icon(Icons.dashboard_outlined),
            tooltip: 'Dashboard de projetos',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DashboardScreen(),
                ),
              );
            },
          ),
        ],
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
                  // ===== CABECALHO COM GRADIENTE =====
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 28),
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF6750A4), Color(0xFF9A7BE7)],
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
                          'Gaby & Eloh',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'Desenvolvedoras em formacao',
                          style: TextStyle(fontSize: 14, color: Colors.white),
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
                            'DEVFOLIO TEAM',
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

                  // ===== INFORMACOES DA EQUIPE =====
                  Padding(
                    padding: const EdgeInsets.all(22),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Sobre nosso projeto',
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Somos Gaby e Eloh, estudantes de tecnologia '
                          'e desenvolvedoras em formacao. Criamos este '
                          'portfolio para apresentar nossos projetos, '
                          'habilidades e conhecimentos em programacao.',
                          style: TextStyle(height: 1.5, color: Colors.black87),
                        ),

                        const SizedBox(height: 22),

                        // ===== HABILIDADES =====
                        const Text(
                          'Nossas habilidades',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: [
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

                        const SizedBox(height: 24),

                        // ===== NOSSA EQUIPE =====
                        const Text(
                          'Nossa equipe',
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 14),

                        // ===== PERFIL DA GABY =====
                        const IntegranteCard(
                          nome: 'Gaby',
                          inicial: 'G',
                          descricao: 'Desenvolvedora em formacao',
                          icone: Icons.code_rounded,
                        ),

                        const SizedBox(height: 14),

                        // ===== PERFIL DA ELOH =====
                        const IntegranteCard(
                          nome: 'Eloh',
                          inicial: 'E',
                          descricao: 'Desenvolvedora em formacao',
                          icone: Icons.laptop_mac_rounded,
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
                                'Estudantes de desenvolvimento',
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 12),

                        const Row(
                          children: [
                            Icon(
                              Icons.groups_outlined,
                              color: Color(0xFF6750A4),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                'Projeto desenvolvido em dupla',
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 20),

                        // ===== BOTAO DO DASHBOARD =====
                        SizedBox(
                          width: double.infinity,
                          child: FilledButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const DashboardScreen(),
                                ),
                              );
                            },
                            icon: const Icon(Icons.dashboard_outlined),
                            label: const Text('Ver dashboard'),
                            style: FilledButton.styleFrom(
                              backgroundColor: const Color(0xFF6750A4),
                              padding: const EdgeInsets.symmetric(vertical: 14),
                            ),
                          ),
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

// =====================================================
// WIDGET - CARD DE INTEGRANTE
// =====================================================

class IntegranteCard extends StatelessWidget {
  final String nome;
  final String inicial;
  final String descricao;
  final IconData icone;

  const IntegranteCard({
    super.key,
    required this.nome,
    required this.inicial,
    required this.descricao,
    required this.icone,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFE4DDF4)),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 27,
            backgroundColor: const Color(0xFFE9DFFF),
            child: Text(
              inicial,
              style: const TextStyle(
                color: Color(0xFF6750A4),
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 13),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nome,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  descricao,
                  style: const TextStyle(fontSize: 12, color: Colors.black54),
                ),
              ],
            ),
          ),
          Icon(icone, color: const Color(0xFF6750A4), size: 25),
        ],
      ),
    );
  }
}

// =====================================================
// TELA 02 - DASHBOARD DE PROJETOS E METRICAS
// =====================================================

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dashboard de Projetos',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFFF5F3FA),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ===== CABECALHO DO DASHBOARD =====
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(22),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF6750A4), Color(0xFF9A7BE7)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.insights_rounded,
                        color: Colors.white,
                        size: 35,
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Portfólio de Gaby e Eloh',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Projetos e conquistas da nossa equipe',
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 26),

                const Text(
                  'Estatísticas da equipe',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 16),

                // ===== GRADE DE ESTATISTICAS =====
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 14,
                  childAspectRatio: 1.05,
                  children: const [
                    BlocoEstatistica(
                      titulo: 'Projetos',
                      valor: '08',
                      icone: Icons.folder_copy_outlined,
                      cor: Color(0xFF6750A4),
                      selo: 'TOTAL',
                    ),
                    BlocoEstatistica(
                      titulo: 'Concluídos',
                      valor: '05',
                      icone: Icons.task_alt,
                      cor: Color(0xFF21865B),
                      selo: 'OK',
                    ),
                    BlocoEstatistica(
                      titulo: 'Em andamento',
                      valor: '02',
                      icone: Icons.pending_actions,
                      cor: Color(0xFFDA8A16),
                      selo: 'ATIVO',
                    ),
                    BlocoEstatistica(
                      titulo: 'Tecnologias',
                      valor: '06',
                      icone: Icons.code_rounded,
                      cor: Color(0xFF2879B9),
                      selo: 'SKILLS',
                    ),
                  ],
                ),

                const SizedBox(height: 28),

                const Text(
                  'Projetos recentes',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 14),

                const ProjetoRecente(
                  nome: 'DevFolio',
                  descricao: 'Portfolio da dupla em Flutter',
                  icone: Icons.person_outline,
                  status: 'Em andamento',
                  cor: Color(0xFF6750A4),
                  responsaveis: 'Gaby e Eloh',
                ),

                const SizedBox(height: 12),

                const ProjetoRecente(
                  nome: 'EcoWatts',
                  descricao: 'Monitoramento do consumo de energia',
                  icone: Icons.bolt,
                  status: 'Concluído',
                  cor: Color(0xFF21865B),
                  responsaveis: 'Projeto da equipe',
                ),

                const SizedBox(height: 12),

                const ProjetoRecente(
                  nome: 'Consulta CEP',
                  descricao: 'Consulta de endereços por CEP',
                  icone: Icons.location_on_outlined,
                  status: 'Concluído',
                  cor: Color(0xFF2879B9),
                  responsaveis: 'Projeto de estudo',
                ),

                const SizedBox(height: 24),

                // ===== IDENTIFICACAO DA DUPLA =====
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: const Color(0xFFE4DDF4)),
                  ),
                  child: const Column(
                    children: [
                      Icon(
                        Icons.groups_rounded,
                        color: Color(0xFF6750A4),
                        size: 32,
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Desenvolvido por Gaby e Eloh',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Duas desenvolvedoras, um só portfólio.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black54, fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// =====================================================
// WIDGET DE ESTATISTICA
// =====================================================

class BlocoEstatistica extends StatelessWidget {
  final String titulo;
  final String valor;
  final IconData icone;
  final Color cor;
  final String selo;

  const BlocoEstatistica({
    super.key,
    required this.titulo,
    required this.valor,
    required this.icone,
    required this.cor,
    required this.selo,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: cor.withValues(alpha: 0.15),
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icone, size: 29, color: cor),
                const Spacer(),
                Text(
                  valor,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: cor,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  titulo,
                  style: const TextStyle(fontSize: 12, color: Colors.black87),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),

          // ===== SELO SOBREPOSTO =====
          Positioned(
            top: 8,
            right: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
              decoration: BoxDecoration(
                color: cor.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                selo,
                style: TextStyle(
                  color: cor,
                  fontSize: 9,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// =====================================================
// WIDGET DE PROJETO RECENTE
// =====================================================

class ProjetoRecente extends StatelessWidget {
  final String nome;
  final String descricao;
  final IconData icone;
  final String status;
  final Color cor;
  final String responsaveis;

  const ProjetoRecente({
    super.key,
    required this.nome,
    required this.descricao,
    required this.icone,
    required this.status,
    required this.cor,
    required this.responsaveis,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: cor.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icone, color: cor, size: 27),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nome,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    descricao,
                    style: const TextStyle(color: Colors.black54, fontSize: 12),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    responsaveis,
                    style: const TextStyle(color: Colors.black54, fontSize: 11),
                  ),
                  const SizedBox(height: 7),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 9,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: cor.withValues(alpha: 0.12),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        status,
                        style: TextStyle(
                          color: cor,
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
