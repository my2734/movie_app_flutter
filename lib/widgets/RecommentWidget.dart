import 'package:flutter/material.dart';
import '../models/film.dart';
import '../pages/MoviePage.dart';
import '../pages/GridListFilmPage.dart';

class RecommentWidget extends StatelessWidget {
  const RecommentWidget(this.film,{super.key});
  final Film film;
  @override
  Widget build(BuildContext context) {
    List<Film> filmList = Film.generateFilm();
    filmList.removeWhere((filmItem) => filmItem.catId != film.catId);
    filmList.removeWhere((filmItem) => filmItem.id == film.id);
    return Column(
     children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Recommended', style: TextStyle(
              color: Colors.white,
              fontSize: 25, 
              fontWeight: FontWeight.w500,
            ),),
             InkWell(
              onTap:(){
                 Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => GridListFilmPage(status : '${film.catId}'),
                  ));
              },
              child: Text('See All', style: TextStyle(
              color: Colors.white54,
              fontSize: 16, 
            ),),
             ),
          ],
        ),
      ),
      SizedBox(height: 15),
      Container(
        height: 100,
        child: ListView.builder(
           scrollDirection: Axis.horizontal,
          itemCount: filmList.length,
          itemBuilder: (BuildContext context, int index){
            return InkWell(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MoviePage(filmList[index]),
                  ),
                  );
              },
              child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/images/${filmList[index].image}',
                height: 100,
                width: 150,
                fit: BoxFit.cover,
                ),
              ),
            )
            );
          }
        )
      ),      
     ],
    );
  }
}
