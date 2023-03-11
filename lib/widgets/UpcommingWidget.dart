import 'package:flutter/material.dart';
import '../models/film.dart';
import '../pages/MoviePage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../pages/GridListFilmPage.dart';

class UpcommingWidget extends StatelessWidget {
  const UpcommingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<Film> filmList =[];
    final beforeList = Film.generateFilm();
    for(int i=0; i<beforeList.length;i++){
      if(i > 20){
        filmList.add(beforeList[i]);
      }
      if(filmList.length > 4) break;
    }

    // print(DateTime.now().millisecondsSinceEpoch.toString());
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Upcoming Movies',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => GridListFilmPage(status : 'All'),
                  ));
                },
                child: Text(
                'See All',
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 16,
                ),
              ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        
        Container(
          height: 180,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: filmList.length,
            itemBuilder: (BuildContext context, int index){
              return Container(
                padding: EdgeInsets.only(left: 10),
                child: InkWell(
                  onTap: () async {
                      Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => MoviePage(filmList[index]),
                      ),
                    );
                  await FirebaseAuth.instance.signOut();
                  },
                  child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/images/${filmList[index].image}',
                    height: 180,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                ),
                )
              ); 
             
            }
          )
        )
      ],
    );
  }
}
