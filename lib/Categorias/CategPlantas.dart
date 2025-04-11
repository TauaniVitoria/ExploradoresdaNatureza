import 'package:flutter/material.dart';

String conteudoPlantasBuscar = '';

class PlantasCards extends StatefulWidget {
  const PlantasCards({super.key});

  @override
  State<PlantasCards> createState() => _PlantasCardsState();
}

class _PlantasCardsState extends State<PlantasCards> {
  final TextEditingController _buscarPlantasController = TextEditingController();
  void SearchPlantas() {
    super.initState();
 
    _buscarPlantasController.addListener(() {
      setState(() { 
        conteudoPlantasBuscar = _buscarPlantasController.text;
      });
    });
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plantas Topic'),
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
                controller: _buscarPlantasController,
                decoration: InputDecoration(                    
                  border: OutlineInputBorder(),                        
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Buscar',                      
                ),                     
              ),

              SizedBox(height: 28),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Plantas', style: TextStyle(
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
                child: Text('Plants', style: TextStyle(
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


            ] // children

          )
        )
      ),
    );
  }
}