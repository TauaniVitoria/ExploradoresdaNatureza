import 'package:flutter/material.dart';

String conteudoEcosBuscar = '';

class PlantasCards extends StatefulWidget {
  const PlantasCards({super.key});

  @override
  State<PlantasCards> createState() => _PlantasCardsState();
}

class _PlantasCardsState extends State<PlantasCards> {
  final TextEditingController _buscarEcosController = TextEditingController();
  void SearchPlantas() {
    super.initState();
 
    _buscarEcosController.addListener(() {
      setState(() { 
        conteudoEcosBuscar = _buscarEcosController.text;
      });
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ecossistemas Topic'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [            
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Categorias', style: TextStyle(
                    fontSize: 18, 
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.right,
                )
              ),

              SizedBox(height: 8),
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus.',
                textAlign: TextAlign.justify,),
                
              SizedBox(height: 28),
              TextField(                    
                controller: _buscarEcosController,
                decoration: InputDecoration(                    
                  border: OutlineInputBorder(),                        
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Buscar',                      
                ),                     
              ),

              SizedBox(height: 28),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Ecossistemas', style: TextStyle(
                  fontSize: 18, 
                  fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.right,
                )
              ),

              SizedBox(height: 8),
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus.',
                textAlign: TextAlign.justify,),
                
              SizedBox(height: 20),

              Align(
                alignment: Alignment.centerLeft,
                child: Text('Savana', style: TextStyle(
                    fontSize: 18, 
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.right,
                )
              ),
              
              SizedBox(height: 8),
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Suspendisse potenti. Fusce auctor, metus ut tincidunt suscipit, odio justo dictum risus.',
                  textAlign: TextAlign.justify,),
                
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
                              'Baleia',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4), 
                            
                            Text(
                              'Lorem ipsum dolor \nsit amet, consectetur.',
                              style: TextStyle(color: Colors.grey[700]),
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 20),
                            
                            ElevatedButton(                              
                              onPressed: (){
                                // Colocar endereço
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
                              color: const Color.fromARGB(255, 100, 185, 192),
                              width: 1,           
                            ),
                            borderRadius: BorderRadius.circular(8), 
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


            ] // children

          )
        )
      ),
    );
  }
}