import 'package:flutter/material.dart';


class CustomSearchDelegate extends SearchDelegate<String>{

  @override
  List<Widget> buildActions(BuildContext context) {
    return [

      IconButton(
        icon: Icon(Icons.clear),
        color: Colors.black87,
        onPressed: (){
          query = "";
        },
      ),

    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      color: Colors.black87,
      onPressed: (){
        close(context, "");

        },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    close(context, query);
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {

    return Container();

    /*

        List<String> lista = List();

        if(query.isNotEmpty){
        lista = [
          "Beatles", "Submarine", "Abbey Road", "Hey Jude", "Live", "Let it be", "Love", "Help"
        ].where(
            (texto) => texto.toLowerCase().startsWith( query.toLowerCase() )
        ).toList();

        return ListView.builder(
            itemCount: lista.length,
            itemBuilder: (context, index){
              return ListTile(
                onTap: (){
                  close(context, lista[index]);
                },
                title: Text( lista[index] ),
              );
            }
        );

        } // if
          else{
              return Center(
                child: Text("Nenhum resultado para a pesquisa"),
              );

        } // else
   */
  } // buildSuggestions
}