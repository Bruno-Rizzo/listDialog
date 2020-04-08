import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List itens = [];

  carregarItens(){

    itens=[];

    for(int i=0;i<=10;i++){

      Map<String,dynamic> item = Map();
      item['titulo']    = 'Título $i';
      item['descricao'] = 'Descricao $i qualquer coisa...';
      itens.add(item);

    }
  }

  @override
  Widget build(BuildContext context) {

    carregarItens();

    return Scaffold(
      appBar: AppBar(
        title: Text('List Dialog'),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(left:10,right:10),
        child: ListView.builder(
          itemCount: itens.length,
          itemBuilder: (context,indice){
            return ListTile(
              onTap: (){
                showDialog(
                  context: context,
                  builder: (context){
                    return AlertDialog(
                      title: Text(itens[indice]['titulo']),
                      content: Text(itens[indice]['descricao']),
                    );
                  },
                  );
              },
              title: Text(itens[indice]['titulo']),
              subtitle: Text(itens[indice]['descricao']),
            );
          },
        ),
      ),
    );

  }

}