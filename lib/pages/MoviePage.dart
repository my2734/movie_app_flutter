import 'package:flutter/material.dart';
import '../widgets/CustomNavBar.dart';
import '../widgets/CustomNavBar.dart';
import '../widgets/MoviePageButtons.dart';
import '../widgets/RecommentWidget.dart';
import '../models/film.dart';
import '../widgets/CommentWidget.dart';
import '../widgets/YoutubeWidget.dart';




class MoviePage extends StatelessWidget {
  const MoviePage(this.film,{super.key});
  final Film film;


  @override
  Widget build(BuildContext context) {
    List<Film> filmList = Film.generateFilm();

    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.4,
            child: Image.asset('assets/images/${film.image}', height: 280,width: double.infinity, fit: BoxFit.cover),
          ),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [                  
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.favorite_outline,
                            size: 35,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 60),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            boxShadow:[
                              BoxShadow(
                                color: Colors.red.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 8,
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset('assets/images/${film.image}', height: 250, width: 180, fit: BoxFit.cover),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 50, top: 70),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.red,
                            boxShadow:[
                              BoxShadow(
                                color: Colors.red.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 8,
                              ),
                            ],
                          ),
                          child: Icon(Icons.play_arrow, color: Colors.white, size: 60),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  MoviePageButtons(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    child: Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        // Text('Doctor Strange 2'. style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500,),),
                        Text('${film.name}', style: TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.w500,),),
                        SizedBox(height: 15),
                        Text('${film.description}', style: TextStyle(color: Colors.white, fontSize: 16,), textAlign: TextAlign.justify),
                      ],
                    ),
                  ),
                  YoutubeWidget(film),

                  SizedBox(height: 10,),
                  RecommentWidget(film),
                  SizedBox(height: 30),
                  CommentWidget(film),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ]
      ), 
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
