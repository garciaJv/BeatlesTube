import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
           SizedBox(
            height: 400,
            width: 400,
            child:  Image.asset("images/logo-band.png"),
          ),

          // O começo...
          Text(
              "O Começo da Banda",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.black87
              ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Text(
               "The Beatles foi uma banda de rock, formada na cidade de Liverpool (Inglaterra),"
                " em 1956. Faziam parte deste grupo os seguintes músicos: "
                "John Lennon (vocalista, guitarrista e compositor), "
                "George Harrison (guitarrista e vocalista),"
                " Paul Mc Cartney (baixista, compositor e vocal)"
                " e Ringo Star (baterista). "
                "O nome inicial da banda era Silver Beetles, "
                "fazendo uma referência a besouros. "
                "Porém, por sugestão de John Lennon, a banda passou a se chamar The Beatles, "
                "pois a palavra inglesa beat significa ritmo ou batida.",

            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.black54
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),

          // o sucesso...
          Text(
            "O Sucesso da Banda",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.black87
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Text(
                "Fizeram sucesso mundial com suas músicas, principalmente na década de 1960."
                    " O sucesso deve-se ao estilo revolucionário que implantaram no cenário musical.  "
                    "Eram canções com letras marcantes e efeitos de guitarra fortes. "
                    "As letras atingiram em cheio os jovens, pois eram contestadoras e revolucionárias para a época."
                    " O estilo visual também revolucionou o cenário musical. Os jovens de Liverpool usavam cabelos compridos,"
                    " roupas de cores fortes, anéis e outros adereços."
                    "O sucesso foi tão grande que no ano de 1965 foram"
                    " recebidos pela rainha Elizabeth II, da Inglaterra, "
                    "e receberam medalhas da Ordem do Império Britânico. "
                    "Da música foram para o cinema e, em 1967, lançaram o filme “Help!”. "
                    "A beatlemania espalhou-se pelo mundo inteiro, "
                    "fazendo sucesso inclusive no Brasil. Produziram também outros filmes: A Hard day’s night e Magical Mistery Tour."
                     "A banda começou a entrar em crise, em função de divergências empresariais, "
                      "no final dos anos 60, terminando em 1970. John Lennon seguiu carreira solo, com participação de "
                    "sua esposa Yoko Ono. Porém, em dezembro de 1980, foi assassinado por um fã, ao entrar em seu prédio"
                    " na cidade de Nova Iorque. Morria um dos maiores músicos de todos os tempos."
                      "As músicas dos Beatles e de John Lennon fazem grande sucesso até os dias de hoje,"
                    "sendo ouvidas por jovens e adultos.",

            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.black54
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),

          // sucessos...
          Text(
            "Os principais Sucessos da Banda",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.black87
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Text(
            "Love me do (1962); She loves you e I want to hold your hand (1963);"
            "Can't buy me love e A hard day's night (1964); Help e Yesterday (1965);"
          "Yellow Submarine (1966); Hey Jude (1968) e Let it be (1970).",

            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.black54
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),

        ],
      )


      ),
    );
  }
}