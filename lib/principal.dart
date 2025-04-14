import 'package:flutter/material.dart';
// Importacao das páginas destinos
import 'Categorias/CategAnimais.dart'; // Tela Categoria Animais
import 'main.dart';
import 'Categorias/CategPlantas.dart';

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
            ),
            SizedBox(height: 8),
            Text('Bem vindo(a), $nomeUsuario!', style: TextStyle(fontSize: 18)),

            // Retângulo PROGRESSO
            SizedBox(height: 24),
            Container(
              width: double.infinity,
              height: 100,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'PROGRESSO NOS QUIZZES',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // Carrossel retangular - Assuntos interessantes
            SizedBox(height: 24),
            Text(
              'Alguns assuntos interessantes',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildTopicButton(
                    context,
                    'assets/icon da main/dinosaur_8351837.png',
                    'Seres do Passado',
                    TelaTema1(),
                  ),
                  SizedBox(width: 10),
                  _buildTopicButton(
                    context,
                    'assets/icon da main/alien.png',
                    'Vida fora da Terra',
                    TelaTema2(),
                  ),
                  SizedBox(width: 10),
                  _buildTopicButton(
                    context,
                    'assets/icon da main/virus_1198638.png',
                    'Vida invisível',
                    TelaTema3(),
                  ),
                ],
              ),
            ),

            // Carrossel quadrado - Categorias
            SizedBox(height: 24),
            Text(
              'Categorias',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCategoryItem(
                    context,
                    Icons.supervised_user_circle,
                    'Animais',
                    AnimalsCards(),
                  ),
                  SizedBox(width: 10),
                  _buildCategoryItem(
                    context,
                    Icons.supervised_user_circle,
                    'Plantas',
                    PlantasCards(),
                  ),
                  SizedBox(width: 10),
                  _buildCategoryItem(
                    context,
                    Icons.supervised_user_circle,
                    'Ecossistemas',
                    TelaTema1(),
                  ),
                ],
              ),
            ),

            // Título e texto outros
            SizedBox(height: 24),
            Text(
              'Outros',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus, nec dictum libero purus ac turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus, nec dictum libero purus ac turpis. \nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus, nec dictum libero purus ac turpis. ',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),

            // Combinação icon + texto
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.home, size: 20, color: Colors.black),
                SizedBox(width: 8),
                Text(
                  'Lorem ipsum dolor sit amet',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),

            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.account_box, size: 20, color: Colors.black),
                SizedBox(width: 8),
                Text('Sed do eiusmod ', style: TextStyle(fontSize: 16)),
              ],
            ),

            // Mais texto
            SizedBox(height: 8),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus, nec dictum libero purus ac turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus, nec dictum libero purus ac turpis. ',
              style: TextStyle(fontSize: 16),
            ),

            // Créditos
            SizedBox(height: 24),
            Container(
              width: double.infinity,
              height: 100,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'creditos',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // Botão voltar a tela inicial
            SizedBox(height: 24),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Voltar para a Tela ANTERIOR'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Contruindo os widgets pro carrossel
  Widget _buildTopicButton(
    BuildContext context,
    String imagePath,
    String label,
    Widget destination,
  ) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shadowColor: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 28, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: const Color.fromARGB(47, 0, 0, 0),
            style: BorderStyle.solid,
            width: 1,
          ),
        ),

        backgroundColor: Color.fromARGB(255, 248, 247, 247),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },

      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(imagePath, width: 36, height: 36),
          SizedBox(width: 30, height: 50),
          Text(label, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(
    BuildContext context,
    IconData icon,
    String label,
    Widget destination,
  ) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.black54),
            SizedBox(height: 8),
            Text(
              label,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

// Telas de destino dos temas > COLOCAR EM UM NOVO ARQUIVO
class TelaTema1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tema 1')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // img retangulo
            SizedBox(height: 24),
            Container(
              width: double.infinity,
              height: 400,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'IMG',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // Texto outros
            SizedBox(height: 24),
            Text(
              'Outros',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus, nec dictum libero purus ac turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus, nec dictum libero purus ac turpis. \nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus, nec dictum libero purus ac turpis. ',
              style: TextStyle(fontSize: 16),
            ),

            // Icon + texto
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.home, size: 20, color: Colors.black),
                SizedBox(width: 8),
                Text(
                  'Lorem ipsum dolor sit amet',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),

            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.account_box, size: 20, color: Colors.black),
                SizedBox(width: 8),
                Text('Sed do eiusmod ', style: TextStyle(fontSize: 16)),
              ],
            ),

            // Mais texto
            SizedBox(height: 8),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus, nec dictum libero purus ac turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus, nec dictum libero purus ac turpis. ',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class TelaTema2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tema 2')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // img retangulo
            SizedBox(height: 24),
            Container(
              width: double.infinity,
              height: 400,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'IMG',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // Texto outros
            SizedBox(height: 24),
            Text(
              'Outros',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus, nec dictum libero purus ac turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus, nec dictum libero purus ac turpis. \nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus, nec dictum libero purus ac turpis. ',
              style: TextStyle(fontSize: 16),
            ),

            // Icon + texto
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.home, size: 20, color: Colors.black),
                SizedBox(width: 8),
                Text(
                  'Lorem ipsum dolor sit amet',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),

            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.account_box, size: 20, color: Colors.black),
                SizedBox(width: 8),
                Text('Sed do eiusmod ', style: TextStyle(fontSize: 16)),
              ],
            ),

            // Mais texto
            SizedBox(height: 8),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus, nec dictum libero purus ac turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus, nec dictum libero purus ac turpis. ',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class TelaTema3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tema 3')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // img retangulo
            SizedBox(height: 24),
            Container(
              width: double.infinity,
              height: 400,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'IMG',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // Texto outros
            SizedBox(height: 24),
            Text(
              'Outros',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus, nec dictum libero purus ac turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus, nec dictum libero purus ac turpis. \nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus, nec dictum libero purus ac turpis. ',
              style: TextStyle(fontSize: 16),
            ),

            // Icon + texto
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.home, size: 20, color: Colors.black),
                SizedBox(width: 8),
                Text(
                  'Lorem ipsum dolor sit amet',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),

            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.account_box, size: 20, color: Colors.black),
                SizedBox(width: 8),
                Text('Sed do eiusmod ', style: TextStyle(fontSize: 16)),
              ],
            ),

            // Mais texto
            SizedBox(height: 8),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus, nec dictum libero purus ac turpis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus, nec dictum libero purus ac turpis. ',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
