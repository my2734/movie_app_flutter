import 'package:flutter/material.dart';
import '../models/film.dart';
import '../widgets/CustomNavBar.dart';
import './MoviePage.dart';
import '../models/category.dart';


class GridListFilmPage extends StatelessWidget {
  final String status;
  const GridListFilmPage({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    List<Film> filmList = Film.generateFilm();
    String heading = 'All Movie';
    if(status == 'All'){
      filmList = Film.generateFilm();
    }else{
      filmList.removeWhere((filmItem) => filmItem.catId != status);
      if(filmList.length ==0 ){
        heading = 'Không tìm thấy phim';
      }else{
        heading = filmList[0].catName.toString();
      }

    }

    return Scaffold(
      body:  SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            size: 35,
                            color: Colors.white,
                          ),
                        ),
                    SizedBox(
                      height: 30
                    ),
                    Text('${heading}', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500,),),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10,),
                  child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 2/ 3.3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20
                  ),
                  itemCount: filmList.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return InkWell(
                    onTap: () {
                      // print(id);
                      Navigator.of(context).push(
                      MaterialPageRoute(
                      builder: (context) => MoviePage(filmList[index])));
                    },
                  child: Container(
                  margin: EdgeInsets.only(left: 10),
                    // height: 300,
                    // width: 180,
                    decoration: BoxDecoration(
                      color: Color(0xFF292B37),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF292B38).withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          child: Image.asset(
                            'assets/images/${filmList[index].image}',
                            height: 200,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 10,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${filmList[index].name}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 21,
                                  fontWeight: FontWeight.w500,
                                  overflow: TextOverflow.ellipsis
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '${filmList[index].catName}',
                                style: TextStyle(
                                  color: Colors.white54,
                                  overflow: TextOverflow.ellipsis
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.amber),
                                  SizedBox(width: 5),
                                  Text(
                                    '${filmList[index].rating}',
                                    style: TextStyle(
                                        color: Colors.white54, fontSize: 16),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),             
          
              );
                }
            ),
                )
              )
             
            ],
          ),
       ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
