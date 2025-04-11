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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('INTRODUÇÃO'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Espaço dita o comportamento do botão quando ele for pressionado
            Navigator.push(// Leva a outra tela
              context,
              MaterialPageRoute(builder: (context) => SegundaTela()),
            );
          },
          child: Text('COMEÇAR'),
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
  

  void initState() {
    super.initState();
    // atualiza o valor variável quando o usuario inserir algo
    _nomeUsuarioController.addListener(() {
      setState(() { // Envia um novo estado caso ocorra alteracoes no campo
        nomeUsuario = _nomeUsuarioController.text;
      });
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LOGIN PAGE')),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 120),
              TextField(   
                controller: _nomeUsuarioController,                 
                decoration: InputDecoration(
                  border: OutlineInputBorder(),                        
                  prefixIcon: Icon(Icons.person),
                  hintText: 'Insira se nome',          
                ),
              ),  

              SizedBox(height: 16),
              ElevatedButton(
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
    );
  }
}

// TERCEIRA TELA - LOGADO COM SUCESSO
    class TerceiraTela extends StatelessWidget {
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




    