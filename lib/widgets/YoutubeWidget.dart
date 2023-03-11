import 'package:flutter/material.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../models/film.dart';
class YoutubeWidget extends StatefulWidget {
  final Film film;
  const YoutubeWidget(this.film,{super.key});
  @override
  State<YoutubeWidget> createState() => _YoutubeWidgetState();
}

class _YoutubeWidgetState extends State<YoutubeWidget> {
  YoutubePlayerController? _controller;

  @override
  void initState() {
    super.initState();
    String str = widget.film.linkUrl.toString();
    const start = "/watch?v=";
    final startIndex = str.indexOf(start);
    String idVideo = str.substring(startIndex+start.length, str.length);
    // print(idVideo);
    // print(widget.film.linkUrl);
    _controller = YoutubePlayerController(
      initialVideoId: idVideo,// https://www.youtube.com/watch?v=Tb9k9_Bo-G4
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: true,
        isLive: false,
      ),
    );
  }


  @override
 Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller!,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.amber,
        progressColors: ProgressBarColors(
          playedColor: Colors.amber,
          handleColor: Colors.amberAccent,
        ),
      ),
      builder: (context, player) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text('Trailer Movie', style: TextStyle(
              color: Colors.white,
              fontSize: 25, 
              fontWeight: FontWeight.w500,
            ),),
            ),
            SizedBox(height: 10),
            Container(          
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: player,
            ),
          ]
        );
      },
    );
  }
}
