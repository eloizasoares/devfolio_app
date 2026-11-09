import 'package:flutter/material.dart';

void main() {
  runApp(const DevFolioApp());
}

const roxo = Color(0xFF8B5CF6);
const fundo = Color(0xFF100D1B);
const card = Color(0xFF1D1830);
const texto = Color(0xFFF5F3FF);
const textoSecundario = Color(0xFFAAA3BE);

class DevFolioApp extends StatelessWidget {
  const DevFolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DevFolio',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: fundo,
        colorScheme: ColorScheme.fromSeed(
          seedColor: roxo,
          brightness: Brightness.dark,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

// =====================================================
// TELA 01 - HOME / APRESENTACAO
// =====================================================

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fundo,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ===== MENU SUPERIOR =====
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 22),
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Color(0xFF302642))),
              ),
              child: Row(
                children: [
                  const Icon(Icons.terminal, color: roxo, size: 30),
                  const SizedBox(width: 10),
                  const Text(
                    'DevFolio.',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: texto,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Início', style: TextStyle(color: texto)),
                  ),
                  const SizedBox(width: 12),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const DashboardScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Dashboard',
                      style: TextStyle(color: textoSecundario),
                    ),
                  ),
                  const SizedBox(width: 12),
                  FilledButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const DashboardScreen(),
                        ),
                      );
                    },
                    style: FilledButton.styleFrom(backgroundColor: roxo),
                    child: const Text('Explorar projetos'),
                  ),
                ],
              ),
            ),

            // ===== APRESENTACAO PRINCIPAL =====
            LayoutBuilder(
              builder: (context, constraints) {
                final largura = constraints.maxWidth;
                final pequeno = largura < 650;

                return Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: pequeno ? 24 : 70,
                    vertical: pequeno ? 65 : 105,
                  ),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF171027),
                        Color(0xFF100D1B),
                        Color(0xFF201337),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 1150),
                      child: Flex(
                        direction: pequeno ? Axis.vertical : Axis.horizontal,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: pequeno ? 0 : 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 15,
                                    vertical: 9,
                                  ),
                                  decoration: BoxDecoration(
                                    color: roxo.withValues(alpha: 0.15),
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                      color: roxo.withValues(alpha: 0.4),
                                    ),
                                  ),
                                  child: const Text(
                                    'PORTFÓLIO DE DESENVOLVIMENTO',
                                    style: TextStyle(
                                      color: Color(0xFFC4A8FF),
                                      fontSize: 11,
                                      letterSpacing: 1.5,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),

                                const SizedBox(height: 28),

                                const Text(
                                  'Transformando ideias em',
                                  style: TextStyle(
                                    color: texto,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),

                                const SizedBox(height: 5),

                                const Text(
                                  'experiências digitais.',
                                  style: TextStyle(
                                    color: Color(0xFFB794FF),
                                    fontSize: 38,
                                    fontWeight: FontWeight.bold,
                                    height: 1.15,
                                  ),
                                ),

                                const SizedBox(height: 25),

                                const Text(
                                  'Somos Gaby e Eloh, estudantes de '
                                  'tecnologia apaixonadas por criatividade, '
                                  'programação e desenvolvimento de soluções '
                                  'digitais.',
                                  style: TextStyle(
                                    color: textoSecundario,
                                    fontSize: 16,
                                    height: 1.8,
                                  ),
                                ),

                                const SizedBox(height: 32),

                                Wrap(
                                  spacing: 12,
                                  runSpacing: 12,
                                  children: [
                                    FilledButton.icon(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (_) =>
                                                const DashboardScreen(),
                                          ),
                                        );
                                      },
                                      icon: const Icon(Icons.arrow_forward),
                                      label: const Text('Conhecer projetos'),
                                      style: FilledButton.styleFrom(
                                        backgroundColor: roxo,
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 22,
                                          vertical: 17,
                                        ),
                                      ),
                                    ),
                                    OutlinedButton.icon(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (_) =>
                                                const DashboardScreen(),
                                          ),
                                        );
                                      },
                                      icon: const Icon(Icons.grid_view),
                                      label: const Text('Dashboard'),
                                      style: OutlinedButton.styleFrom(
                                        foregroundColor: texto,
                                        side: const BorderSide(
                                          color: Color(0xFF55456F),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 20,
                                          vertical: 17,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          if (!pequeno) const SizedBox(width: 65),
                          if (pequeno) const SizedBox(height: 45),

                          // ===== BLOCO VISUAL =====
                          Expanded(
                            flex: pequeno ? 0 : 2,
                            child: Container(
                              width: pequeno ? double.infinity : null,
                              padding: const EdgeInsets.all(28),
                              decoration: BoxDecoration(
                                color: card,
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(
                                  color: const Color(0xFF44345E),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: roxo.withValues(alpha: 0.15),
                                    blurRadius: 35,
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    children: [
                                      Icon(
                                        Icons.circle,
                                        color: Color(0xFF56D99B),
                                        size: 10,
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        'NOSSA EQUIPE',
                                        style: TextStyle(
                                          color: textoSecundario,
                                          fontSize: 11,
                                          letterSpacing: 2,
                                        ),
                                      ),
                                    ],
                                  ),

                                  const SizedBox(height: 28),

                                  const Text(
                                    '01',
                                    style: TextStyle(
                                      color: Color(0xFFB794FF),
                                      fontSize: 13,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    'Gaby',
                                    style: TextStyle(
                                      color: texto,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Text(
                                    'Desenvolvedora em formação',
                                    style: TextStyle(
                                      color: textoSecundario,
                                      fontSize: 13,
                                    ),
                                  ),

                                  const Padding(
                                    padding: EdgeInsets.symmetric(vertical: 22),
                                    child: Divider(color: Color(0xFF403451)),
                                  ),

                                  const Text(
                                    '02',
                                    style: TextStyle(
                                      color: Color(0xFFB794FF),
                                      fontSize: 13,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    'Eloh',
                                    style: TextStyle(
                                      color: texto,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Text(
                                    'Desenvolvedora em formação',
                                    style: TextStyle(
                                      color: textoSecundario,
                                      fontSize: 13,
                                    ),
                                  ),

                                  const SizedBox(height: 28),

                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                      color: roxo.withValues(alpha: 0.15),
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                    child: const Text(
                                      'Duas desenvolvedoras. '
                                      'Um portfólio. Infinitas ideias.',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFFD7C5FF),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),

            // ===== TECNOLOGIAS =====
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 55),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1100),
                  child: Column(
                    children: [
                      const Text(
                        'TECNOLOGIAS',
                        style: TextStyle(
                          color: Color(0xFFB794FF),
                          letterSpacing: 3,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        'Ferramentas que utilizamos',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: texto,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 30),

                      Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 15,
                        runSpacing: 15,
                        children: const [
                          TecnologiaCard(
                            icone: Icons.phone_android,
                            nome: 'Flutter',
                          ),
                          TecnologiaCard(icone: Icons.code, nome: 'Dart'),
                          TecnologiaCard(
                            icone: Icons.language,
                            nome: 'HTML e CSS',
                          ),
                          TecnologiaCard(
                            icone: Icons.storage,
                            nome: 'Banco de dados',
                          ),
                          TecnologiaCard(
                            icone: Icons.terminal,
                            nome: 'Git e GitHub',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // ===== CHAMADA PARA PROJETOS =====
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 55),
              color: const Color(0xFF191329),
              child: Column(
                children: [
                  const Text(
                    'NOSSOS TRABALHOS',
                    style: TextStyle(
                      color: Color(0xFFB794FF),
                      letterSpacing: 3,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Ideias que saíram do papel.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: texto,
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Conheça alguns dos projetos desenvolvidos '
                    'durante nossa jornada na tecnologia.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: textoSecundario, height: 1.6),
                  ),
                  const SizedBox(height: 28),
                  FilledButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const DashboardScreen(),
                        ),
                      );
                    },
                    style: FilledButton.styleFrom(
                      backgroundColor: roxo,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 16,
                      ),
                    ),
                    child: const Text('Explorar portfólio'),
                  ),
                ],
              ),
            ),

            const Rodape(),
          ],
        ),
      ),
    );
  }
}

// =====================================================
// TELA 02 - DASHBOARD
// =====================================================

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fundo,
      appBar: AppBar(
        backgroundColor: fundo,
        foregroundColor: texto,
        title: const Text(
          'DevFolio. / Dashboard',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'PAINEL DA EQUIPE',
                  style: TextStyle(
                    color: Color(0xFFB794FF),
                    letterSpacing: 3,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 12),

                const Text(
                  'Dashboard de projetos',
                  style: TextStyle(
                    color: texto,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  'Acompanhe nossos projetos e conhecimentos.',
                  style: TextStyle(color: textoSecundario),
                ),

                const SizedBox(height: 35),

                // ===== ESTATISTICAS =====
                LayoutBuilder(
                  builder: (context, constraints) {
                    final colunas = constraints.maxWidth > 650 ? 4 : 2;

                    return GridView.count(
                      crossAxisCount: colunas,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      childAspectRatio: 1.15,
                      children: const [
                        EstatisticaCard(
                          titulo: 'Projetos',
                          valor: '08',
                          icone: Icons.folder_open,
                          cor: Color(0xFF9B76F5),
                          selo: 'TOTAL',
                        ),
                        EstatisticaCard(
                          titulo: 'Concluídos',
                          valor: '05',
                          icone: Icons.check_circle_outline,
                          cor: Color(0xFF50D6A0),
                          selo: 'FINALIZADOS',
                        ),
                        EstatisticaCard(
                          titulo: 'Em andamento',
                          valor: '02',
                          icone: Icons.pending_actions,
                          cor: Color(0xFFFFB454),
                          selo: 'ATIVOS',
                        ),
                        EstatisticaCard(
                          titulo: 'Tecnologias',
                          valor: '06',
                          icone: Icons.code,
                          cor: Color(0xFF5DB8FF),
                          selo: 'SKILLS',
                        ),
                      ],
                    );
                  },
                ),

                const SizedBox(height: 45),

                const Text(
                  'Projetos recentes',
                  style: TextStyle(
                    color: texto,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                const ProjetoCard(
                  nome: 'DevFolio App',
                  descricao: 'Portfólio digital desenvolvido com Flutter.',
                  categoria: 'Desenvolvimento Mobile',
                  icone: Icons.laptop_mac,
                  cor: Color(0xFF9B76F5),
                  status: 'Em andamento',
                ),

                const SizedBox(height: 15),

                const ProjetoCard(
                  nome: 'EcoWatts',
                  descricao: 'Monitoramento inteligente do consumo de energia.',
                  categoria: 'Internet das Coisas',
                  icone: Icons.bolt,
                  cor: Color(0xFF50D6A0),
                  status: 'Concluído',
                ),

                const SizedBox(height: 15),

                const ProjetoCard(
                  nome: 'Consulta CEP',
                  descricao: 'Aplicativo para consulta de endereços.',
                  categoria: 'Flutter e API',
                  icone: Icons.location_on_outlined,
                  cor: Color(0xFF5DB8FF),
                  status: 'Concluído',
                ),

                const SizedBox(height: 40),

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF50318D), Color(0xFF281A46)],
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'NOSSA EQUIPE',
                        style: TextStyle(
                          color: Color(0xFFD7C5FF),
                          letterSpacing: 2,
                          fontSize: 11,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Gaby & Eloh',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Desenvolvendo ideias e construindo '
                        'novas experiências através da tecnologia.',
                        style: TextStyle(color: Colors.white70, height: 1.6),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 35),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// =====================================================
// CARD DE TECNOLOGIA
// =====================================================

class TecnologiaCard extends StatelessWidget {
  final IconData icone;
  final String nome;

  const TecnologiaCard({super.key, required this.icone, required this.nome});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 18),
      decoration: BoxDecoration(
        color: card,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: const Color(0xFF403451)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icone, color: roxo, size: 22),
          const SizedBox(width: 10),
          Text(
            nome,
            style: const TextStyle(color: texto, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

// =====================================================
// CARD DE ESTATISTICA
// =====================================================

class EstatisticaCard extends StatelessWidget {
  final String titulo;
  final String valor;
  final IconData icone;
  final Color cor;
  final String selo;

  const EstatisticaCard({
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
      elevation: 5,
      color: card,
      shadowColor: cor.withValues(alpha: 0.15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
        side: BorderSide(color: cor.withValues(alpha: 0.2)),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icone, color: cor, size: 28),
                const Spacer(),
                Text(
                  valor,
                  style: TextStyle(
                    color: cor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  titulo,
                  style: const TextStyle(color: textoSecundario, fontSize: 12),
                ),
              ],
            ),
          ),
          Positioned(
            top: 9,
            right: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
              decoration: BoxDecoration(
                color: cor.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(7),
              ),
              child: Text(
                selo,
                style: TextStyle(
                  color: cor,
                  fontSize: 8,
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
// CARD DE PROJETO
// =====================================================

class ProjetoCard extends StatelessWidget {
  final String nome;
  final String descricao;
  final String categoria;
  final IconData icone;
  final Color cor;
  final String status;

  const ProjetoCard({
    super.key,
    required this.nome,
    required this.descricao,
    required this.categoria,
    required this.icone,
    required this.cor,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: card,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xFF403451)),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: cor.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(icone, color: cor, size: 30),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nome,
                  style: const TextStyle(
                    color: texto,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  descricao,
                  style: const TextStyle(
                    color: textoSecundario,
                    fontSize: 12,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 7),
                Text(
                  categoria,
                  style: TextStyle(
                    color: cor,
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Icon(Icons.arrow_outward, color: cor),
        ],
      ),
    );
  }
}

// =====================================================
// RODAPE
// =====================================================

class Rodape extends StatelessWidget {
  const Rodape({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(28),
      color: const Color(0xFF0B0912),
      child: const Column(
        children: [
          Text(
            'DevFolio.',
            style: TextStyle(
              color: Color(0xFFB794FF),
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Desenvolvido por Gaby e Eloh',
            style: TextStyle(color: textoSecundario, fontSize: 12),
          ),
          SizedBox(height: 8),
          Text(
            '© 2026 - Todos os direitos reservados.',
            style: TextStyle(color: Color(0xFF777083), fontSize: 11),
          ),
        ],
      ),
    );
  }
}
