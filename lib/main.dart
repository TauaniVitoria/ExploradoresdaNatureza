import 'package:flutter/material.dart';
import 'principal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Flutter constrói aplicações a partir de um sistema de widgets
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegação Flutter',
      debugShowCheckedModeBanner: false,
      // Configuraçoes GERAIS de cores
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white, // cor de fundo das páginas
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.black), // cor do texto principal
        ),
      ),
      home: PrimeiraTela(),
    );
  }
}

// Stateless: constrói widgets sem estado
// PRIMEIRA TELA - INTRODUÇÃO
class PrimeiraTela extends StatelessWidget {
  const PrimeiraTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Sem AppBar, mas com botão de voltar personalizado se necessário
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fundo/inicio.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Espaço para empurrar o botão para baixo
              SizedBox(height: 300),
              // Botão para navegar para a próxima tela
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber, // Cor amarela
                  foregroundColor: Colors.black, // Cor do texto
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  elevation: 5, // Sombra para destacar o botão
                ),
                onPressed: () {
                  // Navega para a próxima tela
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SegundaTela()),
                  );
                },
                child: Text('INICIAR'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// SEGUNDA TELA - LOGIN PAGE

String nomeUsuario = ''; // Variavel GLOBAL que armazena o nome do usuário

class SegundaTela extends StatefulWidget {
  const SegundaTela({super.key});

  @override
  State<SegundaTela> createState() => _SegundaTelaState();
}

class _SegundaTelaState extends State<SegundaTela> {
  // Controlador do campo de texto
  final TextEditingController _nomeUsuarioController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // atualiza o valor variável quando o usuario inserir algo
    _nomeUsuarioController.addListener(() {
      setState(() {
        // Envia um novo estado caso ocorra alteracoes no campo
        nomeUsuario = _nomeUsuarioController.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LOGIN PAGE')),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fundo/login.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Espaço para empurrar os elementos para baixo
                SizedBox(height: 100),
                // Campo de texto com fundo semi-transparente
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.8),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: _nomeUsuarioController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                      hintText: 'Insira seu nome',
                      filled: true,
                      fillColor: Colors.transparent,
                    ),
                  ),
                ),

                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber, // Botão amarelo
                    foregroundColor: Colors.black, // Texto preto
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    elevation: 5, // Sombra para destacar o botão
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TerceiraTela()),
                    );
                  },
                  child: Text('LOGAR'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// TERCEIRA TELA - LOGADO COM SUCESSO
class TerceiraTela extends StatelessWidget {
  const TerceiraTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LOGADO COM SUCESSO')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaPrincipal()),
                );
              }, // onPressed()
              child: Text('ENTRAR'),
            ),
            Text('LOGIN CADASTRADO COM SUCESSO'),
          ],
        ),
      ),
    );
  }
}



/*Renderizar
Single render: uma unica instrução a ser seguida, componentes iguais
Multi render: mais de uma instrução a ser seguida, componentes diferentes*/




