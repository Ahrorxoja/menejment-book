import 'package:flutter/material.dart';
import 'package:menejment/colors/colors.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeVideo extends StatefulWidget {
  const YoutubeVideo({Key? key}) : super(key: key);

  @override
  State<YoutubeVideo> createState() => _YoutubeVideoState();
}

class _YoutubeVideoState extends State<YoutubeVideo> {
  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'BJQKzl76yQQ',
    flags: const YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );final YoutubePlayerController _controller2 = YoutubePlayerController(
    initialVideoId: '1wL0ehGAMe0',
    flags: const YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );final YoutubePlayerController _controller3 = YoutubePlayerController(
    initialVideoId: '_f4q1PrveLQ',
    flags: const YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );final YoutubePlayerController _controller4 = YoutubePlayerController(
    initialVideoId: 'grke--7fH_8',
    flags: const YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );
  final YoutubePlayerController _controller5 = YoutubePlayerController(
    initialVideoId: 'CwnBDD48mws',
    flags: const YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  ); final YoutubePlayerController _controller6 = YoutubePlayerController(
    initialVideoId: 'CwnBDD48mws',
    flags: const YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );final YoutubePlayerController _controller7 = YoutubePlayerController(
    initialVideoId: 'bBqeOiG0JBI',
    flags: const YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );final YoutubePlayerController _controller8 = YoutubePlayerController(
    initialVideoId: 'VVIRKc3vaUQ',
    flags: const YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );final YoutubePlayerController _controller9 = YoutubePlayerController(
    initialVideoId: 'zC9A_LE4c9o',
    flags: const YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );
  final YoutubePlayerController _controller10 = YoutubePlayerController(
    initialVideoId: '9HLwSb_x8Ko',
    flags: const YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Youtube video"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "1.БИЗНЕС РЕЖА ҚАНДАЙ ТУЗИЛАДИ.",textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              ),
            ),
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: const Color.fromRGBO(1, 177, 98, 1),
            ),Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "2. БИЗНЕС РЕЖА ТУЗИШ СИРЛАРИ.",textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              ),
            ),
            YoutubePlayer(
              controller: _controller2,
              showVideoProgressIndicator: true,
              progressIndicatorColor: const Color.fromRGBO(1, 177, 98, 1),
            ),Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "3 Бизнес режа тузиш учун нималарни билиш керак?",textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              ),
            ),
            YoutubePlayer(
              controller: _controller3,
              showVideoProgressIndicator: true,
              progressIndicatorColor: const Color.fromRGBO(1, 177, 98, 1),
            ),Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "4. Қишлоқ ва кичик шаҳарчадагилар учун БИЗНЕС ҒОЯ топиш йўллари ",textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              ),
            ),
            YoutubePlayer(
              controller: _controller4,
              showVideoProgressIndicator: true,
              progressIndicatorColor: const Color.fromRGBO(1, 177, 98, 1),
            ),Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "5. Бугун бошлаш мумкин бўлган кам сармояли бизнес",textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              ),
            ),
            YoutubePlayer(
              controller: _controller5,
              showVideoProgressIndicator: true,
              progressIndicatorColor: const Color.fromRGBO(1, 177, 98, 1),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "6. Пулсиз бизнес бошлаш",
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              ),
            ),
            YoutubePlayer(
              controller: _controller6,
              showVideoProgressIndicator: true,
              progressIndicatorColor: const Color.fromRGBO(1, 177, 98, 1),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "7. Уйингизда бошлаш учун энг осон ва деярли пул сарфланмайдиган 3 бизнес",
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              ),
            ),
            YoutubePlayer(
              controller: _controller7,
              showVideoProgressIndicator: true,
              progressIndicatorColor: const Color.fromRGBO(1, 177, 98, 1),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "8. «0» сўм билан бошлаш мумкин бўлган бўлган 5та бизнес.",
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              ),
            ),
            YoutubePlayer(
              controller: _controller8,
              showVideoProgressIndicator: true,
              progressIndicatorColor: const Color.fromRGBO(1, 177, 98, 1),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "9. Уйда қилиш учун янги 6та бизнес",
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              ),
            ),
            YoutubePlayer(
              controller: _controller9,
              showVideoProgressIndicator: true,
              progressIndicatorColor: const Color.fromRGBO(1, 177, 98, 1),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "10. ЎЗБЕКИСТОНДА ЯНГИ ТОП 10ТА БИЗНЭС ИДЕЯЛАР",
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              ),
            ),
            YoutubePlayer(
              controller: _controller10,
              showVideoProgressIndicator: true,
              progressIndicatorColor: const Color.fromRGBO(1, 177, 98, 1),
            ),
          ],
        ),
      ),
    );
  }
}
