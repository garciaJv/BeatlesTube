import 'package:beatlestube/model/Video.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';


const CHAVE_YOUTUBE_API = "AIzaSyDTekDZIRWD4InjwyKrld7U79cyNPYdlLM";
const ID_CANAL = "UCc4K7bAqpdBP8jh1j9XZAww";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";


class Api{

 Future<List<Video>> pesquisar(String pesquisa) async {

  http.Response response = await http.get(
          URL_BASE + "search"

          "?part=snippet"
          "&type=video"
          "&maxResults=50"
          "&order=viewCount"
          "&key=$CHAVE_YOUTUBE_API"
          "&channelId=$ID_CANAL"
          "&q=$pesquisa"
  );

    if(response.statusCode == 200){

    Map<String, dynamic> dadosJson = json.decode( response.body );


     List<Video> videos = dadosJson["items"].map<Video>(
         (map){
            return Video.fromJson(map);
           // return Video.converterJson(map);
         }
     ).toList();

    return videos;


     //print("resultado ->" + videos.toString());

    /*
    for(var video in dadosJson["items"]){
    print("resultado -> " + video.toString());
    }
    */

    // print("resultado -> " + dadosJson["items"].toString());

  } else{
    print("ERRO ->" + response.statusCode.toString());
  }


  }
}