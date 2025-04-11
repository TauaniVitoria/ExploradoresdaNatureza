import 'package:flutter/material.dart';

// Variável GLOBAL que armaneza o VALOR a ser buscado no banco de dados
String conteudoBuscar = '';

// Página Principal
class AnimalsCards extends StatefulWidget {
  const AnimalsCards({super.key});

  @override
  State<AnimalsCards> createState() => _AnimalsCardsState();
}

class _AnimalsCardsState extends State<AnimalsCards> {
  final TextEditingController _buscarController = TextEditingController();

  void initSearchState() {
    super.initState();
 
    _buscarController.addListener(() {
      setState(() { 
        conteudoBuscar = _buscarController.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Alicerce da página, dá a cara do aplicativo
      appBar: AppBar(

      ),
      body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Categorias', style: TextStyle(
                    fontSize: 18, 
                    fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.right,
                  )
                ),
                SizedBox(height: 8),
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus.',
                  textAlign: TextAlign.justify,
                ),
                
                SizedBox(height: 28),
                
 
                TextField(                    
                  controller: _buscarController,
                  decoration: InputDecoration(                    
                    border: OutlineInputBorder(),                        
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Buscar',                      
                  ),   
                  
                ),

                SizedBox(height: 28),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Animais', style: TextStyle(
                    fontSize: 18, 
                    fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.right,
                  )
                ),
                SizedBox(height: 8),
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus.',
                  textAlign: TextAlign.justify,
                ),
                
                SizedBox(height: 20),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Mamíferos', style: TextStyle(
                    fontSize: 18, 
                    fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.right,
                  )
                ),
                SizedBox(height: 8),
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus.',
                  textAlign: TextAlign.justify,
                ),
                
                SizedBox(height: 20),

                // Obs: todos os cards são iguais, exceto o widget Text() e o link da imagem

                // CARD 1
                Card(
                  elevation: 4, // sombra
                  shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Baleia',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 207, 250, 255),
                            border: Border.all(
                              color: const Color.fromARGB(255, 100, 185, 192),// Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/mamiferos/baleia.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 2
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Bicho-preguiça',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 208, 233),
                            border: Border.all(
                              color:const Color.fromARGB(255, 255, 162, 212),// Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/mamiferos/sloth_4775527.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 3
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                        borderRadius: BorderRadius.circular(12),  
                        side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                      ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Camelo',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 243, 209),
                            border: Border.all(
                              color: const Color.fromARGB(255, 255, 221, 129), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/mamiferos/camelo.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 4
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Cavalo',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 217, 206),
                            border: Border.all(
                              color:const Color.fromARGB(255, 255, 176, 154), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/mamiferos/cavalo.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 5
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Cervo',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 220, 220),
                            border: Border.all(
                              color:const Color.fromARGB(255, 255, 157, 157), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/mamiferos/cervo.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                ),
              
                // CARD 6
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Coala',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 226, 254, 219),
                            border: Border.all(
                              color:const Color.fromARGB(255, 125, 191, 108), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/mamiferos/coala.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 7
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Elefante',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 224, 198),
                            border: Border.all(
                              color:const Color.fromARGB(255, 255, 194, 144), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/mamiferos/elefante.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 8
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Foca',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 224, 198),
                            border: Border.all(
                              color:const Color.fromARGB(255, 255, 192, 141), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/mamiferos/foca.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 9
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Girafa',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 232, 202),
                            border: Border.all(
                              color:const Color.fromARGB(255, 253, 202, 136), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/mamiferos/girafa.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 10
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Golfinho',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 242, 252),
                            border: Border.all(
                              color:const Color.fromARGB(255, 255, 185, 239), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/mamiferos/golfinho.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 11
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Leão',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 211, 194),
                            border: Border.all(
                              color:const Color.fromARGB(255, 255, 186, 158), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/mamiferos/leao.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 12
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Macaco',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 244, 219),
                            border: Border.all(
                              color:const Color.fromARGB(255, 245, 219, 160), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/mamiferos/macaco.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 13
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Morcego',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 234, 228, 255),
                            border: Border.all(
                              color:const Color.fromARGB(255, 197, 182, 254), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/mamiferos/morcego.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 14
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Onça',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 241, 208),
                            border: Border.all(
                              color:const Color.fromARGB(255, 255, 223, 147),// Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/mamiferos/onca.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 15
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Ornitorinco',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 231, 216),
                            border: Border.all(
                              color:const Color.fromARGB(255, 255, 198, 163),// Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/mamiferos/ornitorinco.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 16
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Ouriço',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 220, 236, 255),
                            border: Border.all(
                              color:const Color.fromARGB(255, 174, 210, 255), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/mamiferos/ourico.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 17
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Ovelha',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 231, 225),
                            border: Border.all(
                              color:const Color.fromARGB(255, 255, 186, 172), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/mamiferos/ovelha.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 18
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Panda',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 225, 224, 255),
                            border: Border.all(
                              color:const Color.fromARGB(255, 189, 187, 250), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/mamiferos/panda.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 19
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Porcos',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 223, 232),
                            border: Border.all(
                              color:const Color.fromARGB(255, 255, 182, 203), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/mamiferos/porco.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 20
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Raposa',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 222, 204),
                            border: Border.all(
                              color:const Color.fromARGB(255, 255, 193, 159), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/mamiferos/raposa.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 21
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Rato',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 233, 246),
                            border: Border.all(
                              color:const Color.fromARGB(255, 255, 201, 232), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/mamiferos/rato.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 22
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Tamanduá',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 241, 212, 171),
                            border: Border.all(
                              color:const Color.fromARGB(255, 217, 182, 132), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/mamiferos/tamandua.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 23
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Tatu',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 229, 221),
                            border: Border.all(
                              color:const Color.fromARGB(255, 255, 196, 179), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/mamiferos/tatu.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 24
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Unicórnio do Mar',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 214, 238, 255),
                            border: Border.all(
                              color:const Color.fromARGB(255, 173, 221, 255), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/mamiferos/narval.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 25
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Urso Polar',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 227, 219, 255),
                            border: Border.all(
                              color:const Color.fromARGB(255, 177, 163, 228),// Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/mamiferos/polar.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 26
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Vacas',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 248, 231),
                            border: Border.all(
                              color:const Color.fromARGB(255, 249, 219, 151), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/mamiferos/vaca.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 27
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Zebra',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 239, 237, 255),
                            border: Border.all(
                              color:const Color.fromARGB(255, 184, 176, 255), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/mamiferos/zebra.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // fim dos cards dos mamíferos
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Aves', style: TextStyle(
                    fontSize: 18, 
                    fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.right,
                  )
                ),
                SizedBox(height: 8),
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus.',
                  textAlign: TextAlign.justify,
                ),
                
                SizedBox(height: 20),


                // CARD 1
                Card(
                  elevation: 4, // sombra
                  shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Águia',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 220, 225, 255),
                            border: Border.all(
                              color: const Color.fromARGB(255, 157, 172, 255),// Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/aves/aguia.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 2
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Arara',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 229, 236),
                            border: Border.all(
                              color:const Color.fromARGB(255, 255, 175, 196),// Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/aves/arara.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 3
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Avestruz',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 229, 236),
                            border: Border.all(
                              color: const Color.fromARGB(255, 255, 182, 201), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/aves/avestruz.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 4
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Cisne',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 217, 206),
                            border: Border.all(
                              color:const Color.fromARGB(255, 255, 193, 176), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/aves/cisne.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 5
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Coruja',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 220, 220),
                            border: Border.all(
                              color:const Color.fromARGB(255, 255, 157, 157), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/aves/coruja.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                ),
              
                // CARD 6
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Flamingo',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 225, 242),
                            border: Border.all(
                              color:const Color.fromARGB(255, 255, 125, 196), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/aves/flamingo.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 7
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Galinhas',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 217, 231),
                            border: Border.all(
                              color:const Color.fromARGB(255, 255, 132, 177), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/aves/galinha.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 8
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Kiwi',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 224, 198),
                            border: Border.all(
                              color:const Color.fromARGB(255, 255, 192, 141), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/aves/kiwi.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 9
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Pavão',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 216, 255, 231),
                            border: Border.all(
                              color:const Color.fromARGB(255, 107, 200, 143), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/aves/pavao.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 10
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Pinguim',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 254, 224),
                            border: Border.all(
                              color:const Color.fromARGB(255, 196, 196, 94),// Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/aves/pinguim.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),
                
                // CARD 11
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Tucano',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 232, 202),
                            border: Border.all(
                              color:const Color.fromARGB(255, 253, 202, 136), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/aves/tucano.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 12
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Urubu',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 242, 252),
                            border: Border.all(
                              color:const Color.fromARGB(255, 255, 185, 239), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/aves/urubu.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),
                

                // CARDS ANFIBIOS
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Anfíbios', style: TextStyle(
                    fontSize: 18, 
                    fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.right,
                  )
                ),
                SizedBox(height: 8),
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus.',
                  textAlign: TextAlign.justify,
                ),
                
                SizedBox(height: 20),

                // CARD 1
                Card(
                  elevation: 4, // sombra
                  shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Axolote',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 253, 232, 233),
                            border: Border.all(
                              color: const Color.fromARGB(255, 255, 161, 165),// Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/anfibios/axolote.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 2
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Salamandra',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 213, 255, 242),
                            border: Border.all(
                              color:const Color.fromARGB(255, 112, 255, 212),// Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/anfibios/salamandra.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 3
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Sapo',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 228, 255, 229),
                            border: Border.all(
                              color: const Color.fromARGB(255, 130, 229, 134),// Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/anfibios/sapo.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                ),

                // CARDS ARTROPODES       
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Artrópodes', style: TextStyle(
                    fontSize: 18, 
                    fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.right,
                  )
                ),
                SizedBox(height: 8),
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus.',
                  textAlign: TextAlign.justify,
                ),
                
                SizedBox(height: 20),

                // CARD 1
                Card(
                  elevation: 4, // sombra
                  shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Abelha',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 239, 217),
                            border: Border.all(
                              color: const Color.fromARGB(255, 255, 221, 176),// Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/artropodes/abelha.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 2
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Aranhas',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 227, 217, 255),
                            border: Border.all(
                              color:const Color.fromARGB(255, 198, 177, 255),// Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/artropodes/aranha.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 3
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Besouro',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 244, 229, 255),
                            border: Border.all(
                              color: const Color.fromARGB(255, 225, 185, 255), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/artropodes/besouro.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 4
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Borboleta',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 215, 232),
                            border: Border.all(
                              color:const Color.fromARGB(255, 255, 167, 204), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/artropodes/borboleta.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 5
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Caranguejo',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 220, 220),
                            border: Border.all(
                              color:const Color.fromARGB(255, 255, 157, 157), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/artropodes/caranguejo.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                ),
              
                // CARD 6
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Escorpião',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 239, 212),
                            border: Border.all(
                              color:const Color.fromARGB(255, 255, 223, 168), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/artropodes/escorpiao.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 7
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Formiga',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 217, 231),
                            border: Border.all(
                              color:const Color.fromARGB(255, 255, 132, 177), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/artropodes/formiga.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 8
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Grilo',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 224, 198),
                            border: Border.all(
                              color:const Color.fromARGB(255, 255, 192, 141), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/artropodes/grilo.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 9
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Joaninha',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 221, 235),
                            border: Border.all(
                              color:const Color.fromARGB(255, 211, 107, 151), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/artropodes/joaninha.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 10
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Lagosta',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 224, 224),
                            border: Border.all(
                              color:const Color.fromARGB(255, 247, 173, 173),// Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/artropodes/lagosta.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),
                
                // CARD 11
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Libélula',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 232, 202),
                            border: Border.all(
                              color:const Color.fromARGB(255, 253, 202, 136), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/artropodes/libelula.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 12
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Minhoca',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 242, 252),
                            border: Border.all(
                              color:const Color.fromARGB(255, 255, 185, 239), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/artropodes/minhoca.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),
                                

                // CARDS MOLUSCOS
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Moluscos', style: TextStyle(
                    fontSize: 18, 
                    fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.right,
                  )
                ),
                SizedBox(height: 8),
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus.',
                  textAlign: TextAlign.justify,
                ),
                
                SizedBox(height: 20),

                // CARD 1
                Card(
                  elevation: 4, // sombra
                  shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Caracol',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 203, 235, 255),
                            border: Border.all(
                              color: const Color.fromARGB(255, 139, 211, 255),// Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/moluscos/caracol.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 2
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Lula',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 229, 236),
                            border: Border.all(
                              color:const Color.fromARGB(255, 255, 175, 196),// Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/moluscos/lula.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 3
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Polvo',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 229, 236),
                            border: Border.all(
                              color: const Color.fromARGB(255, 255, 182, 201), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/moluscos/polvo.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                ),

                // CARDS REPTEIS
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Répteis', style: TextStyle(
                    fontSize: 18, 
                    fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.right,
                  )
                ),
                SizedBox(height: 8),
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus.',
                  textAlign: TextAlign.justify,
                ),
                
                SizedBox(height: 20),


                // CARD 1
                Card(
                  elevation: 4, // sombra
                  shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Camaleão',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 228, 232), 
                            border: Border.all(
                              color: const Color.fromARGB(255, 255, 143, 160), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/repteis/camaleao.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 2
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Cobra',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 212, 255, 222),
                            border: Border.all(
                              color:const Color.fromARGB(255, 144, 255, 170),// Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/repteis/cobra.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),                      
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 3
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Jabuti',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 227, 202),
                            border: Border.all(
                              color: const Color.fromARGB(255, 255, 190, 133),// Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/repteis/jabuti.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 4
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Jacaré',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 235, 255, 164),
                            border: Border.all(
                              color:const Color.fromARGB(255, 147, 163, 89), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/repteis/jacare.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                ),

                // CARD 5
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Lagarto',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 237, 215),
                            border: Border.all(
                              color: const Color.fromARGB(255, 242, 197, 146), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/repteis/lagarto.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                ),
              
                // CARD 6
                Card(
                  elevation: 4, // sombra
                      shape: RoundedRectangleBorder(      
                    borderRadius: BorderRadius.circular(12),  
                    side: BorderSide(color: const Color.fromARGB(255, 221, 221, 221), width: 1)                
                  ),
                  shadowColor: Colors.black,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Row( // Dispoe os elementos numa linha (organizacao: textos a esquerda, imagens a direita)
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // CHILD 1: TÍTULO E SUBTÍTULO
                      Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Tartaruga',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), // Espaçamento do Column
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => const TerceiraPag())
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(140, 12), // largura x altura
                              ),
                              child: const Text('Conhecer', 
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                      

                      // CHILD 2: imagem
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                         
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 223, 255, 171),
                            border: Border.all(
                              color:const Color.fromARGB(255, 150, 203, 63), // Cor da borda
                              width: 1,            // Espessura da borda
                            ),
                            borderRadius: BorderRadius.circular(8), // Cantos arredondados (opcional)
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/animais/repteis/tartaruga.png',
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                ),
                            



              ],
            ), // Column,
          )
        ),
      
    ); // Scaffold
  }
}



// PÁGINAS EXEMPLO

class TerceiraPag extends StatelessWidget {
  const TerceiraPag({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Categorias', style: TextStyle(
                  fontSize: 18, 
                  fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.right,
                )
              ),
              
              SizedBox(height: 8),
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus.',
                textAlign: TextAlign.justify,
              ),

              SizedBox(height: 16.0),

              Padding(
                padding: EdgeInsets.all(0.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.amber,
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  width: 500,
                  height: 400,
                  child: Text('IMAGEM'),
                ),
                
              ),

              SizedBox(height: 16.0),
              Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.add_to_photos_sharp, color: Colors.red),
                      SizedBox(width: 8),
                      Text('Lorem ipsum dolor sit amet, \nconsectetur adipiscin'),
                    ],
                  ),

                  Spacer(), // espaço flexível entre os dois grupos

                  // Segundo grupo: ícone + texto
                  Row(
                    children: [
                      Icon(Icons.add_to_photos_sharp, color: Colors.blue),
                      SizedBox(width: 8),
                      Text('Lorem ipsum dolor sit amet, \nconsectetur adipiscin'),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 16.0),

              SizedBox(height: 8),
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus.',
                textAlign: TextAlign.justify,
              ),

              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus.',
                textAlign: TextAlign.justify,
              ),


            ]
          ),
        ),
      ),
    );
  }
}
