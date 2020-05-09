import 'package:beatlestube/Api.dart';
import 'package:beatlestube/model/Video.dart';
import 'package:flutter_youtube/flutter_youtube.dart';
import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
 String pesquisa;

 Inicio( this.pesquisa );

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

  _listarVideos(String pesquisa){

    Api api = Api();
    return  api.pesquisar( pesquisa );
  }

  @override
  void initState() {
    super.initState();
    print("chamado 1 - initState");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("chamado 2 - didChangeDependencies");
  }

  @override
  void didUpdateWidget(Inicio oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("chamado 2 - didUpdateWidge");

  }

  @override
  void dispose() {
    super.dispose();
    print("chamado 4 - dispose");

  }

  @override
  Widget build(BuildContext context) {
    print("chamado 3 - build");

    return FutureBuilder<List <Video> >(
        future: _listarVideos(widget.pesquisa),
        builder: (context, snapshot){

          switch(snapshot.connectionState){

            case ConnectionState.none :
              break;

            case ConnectionState.waiting :
              return Center(
                child: CircularProgressIndicator(),
              );
              break;

            case ConnectionState.active :
              break;

            case ConnectionState.done :
              if(snapshot.hasData){

                return ListView.separated(
                    itemBuilder: (context, index){

                      List<Video> videos = snapshot.data; // recupera a lista dos vídeos
                      Video video = videos[ index ]; //  armazena da variável "video"

                      return GestureDetector(
                        onTap: (){
                          FlutterYoutube.playYoutubeVideoById(
                              apiKey: CHAVE_YOUTUBE_API,
                              videoId: video.id,
                              autoPlay: true,
                          );
                        },
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 250,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(video.imagem),
                                    fit: BoxFit.cover,
                                  )
                              ),
                            ),

                            ListTile(
                              title: Text(
                                  video.titulo,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black54
                                  )
                              ),

                              subtitle: Text(
                                  video.canal,
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black87
                                  )
                              ),
                            )

                          ],
                        ),
                      );
                    }, // itemBuilder

                    separatorBuilder: (context, index) => Divider(
                      height: 15,
                      color: Colors.black54,
                    ),

                    itemCount: snapshot.data.length
                );

              } // if
              else{
                return Center(
                    child: Text("Nenhum dado a ser exibido!", style: TextStyle(fontSize: 22),)
                );
              } // else
              break;

          } // switch
        }, // builder

    );

  }
}

