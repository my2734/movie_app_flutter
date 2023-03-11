import 'package:flutter/material.dart';
import '../models/film.dart';
import '../pages/MoviePage.dart';
import '../pages/GridListFilmPage.dart';

class NewMovieWidget extends StatelessWidget {
  const NewMovieWidget({super.key});

  @override
  Widget build(BuildContext context) {
     List<Film> beforeList = Film.generateFilm();
     List<Film> filmList = [];
    for(int i =0 ; i< beforeList.length;i++){
      if(i < 6){
        filmList.add(beforeList[i]);
      }
      
    }


    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'New Movie',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
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
          height: 300.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: filmList.length,
            itemBuilder: (BuildContext context, int index){
              return InkWell(
                onTap: () {
                  // print(id);
                  Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MoviePage(filmList[index]),
                  ),
                );
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                    height: 300,
                    width: 180,
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
          )
        )
      //  Container(
      //   height: 300.0,
      //     child: ListView(
      //       // This next line does the trick.
      //       scrollDirection: Axis.horizontal,
      //       children: <Widget>[
      //         InkWell(
      //           onTap: () {
      //             // print(id);
      //             // Navigator.of(context).push(
      //             // MaterialPageRoute(
      //             //   builder: (context) => MoviePage(id),
      //             // ),
      //           // );
      //           },
      //           child: Container(
      //             margin: EdgeInsets.only(left: 10),
      //               height: 300,
      //               width: 180,
      //               decoration: BoxDecoration(
      //                 color: Color(0xFF292B37),
      //                 borderRadius: BorderRadius.circular(10),
      //                 boxShadow: [
      //                   BoxShadow(
      //                     color: Color(0xFF292B38).withOpacity(0.5),
      //                     spreadRadius: 5,
      //                     blurRadius: 6,
      //                   ),
      //                 ],
      //               ),
      //               child: Column(
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   ClipRRect(
      //                     borderRadius: BorderRadius.only(
      //                       topLeft: Radius.circular(10),
      //                       topRight: Radius.circular(10),
      //                     ),
      //                     child: Image.asset(
      //                       'assets/images/up1.png',
      //                       height: 200,
      //                       width: 200,
      //                       fit: BoxFit.cover,
      //                     ),
      //                   ),
      //                   Padding(
      //                     padding: EdgeInsets.symmetric(
      //                       horizontal: 5,
      //                       vertical: 10,
      //                     ),
      //                     child: Column(
      //                       crossAxisAlignment: CrossAxisAlignment.start,
      //                       children: [
      //                         Text(
      //                           'Hello ca nha yeu',
      //                           style: TextStyle(
      //                             color: Colors.white,
      //                             fontSize: 21,
      //                             fontWeight: FontWeight.w500,
      //                             overflow: TextOverflow.ellipsis
      //                           ),
      //                         ),
      //                         SizedBox(
      //                           height: 5,
      //                         ),
      //                         Text(
      //                           'cat name',
      //                           style: TextStyle(
      //                             color: Colors.white54,
      //                             overflow: TextOverflow.ellipsis
      //                           ),
      //                         ),
      //                         SizedBox(height: 8),
      //                         Row(
      //                           children: [
      //                             Icon(Icons.star, color: Colors.amber),
      //                             SizedBox(width: 5),
      //                             Text(
      //                               'rating',
      //                               style: TextStyle(
      //                                   color: Colors.white54, fontSize: 16),
      //                             )
      //                           ],
      //                         )
      //                       ],
      //                     ),
      //                   )
      //                 ],
      //               ),
      //             ),             
          
      //         )
      //       ],
      //     ),
      //  )
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     children: filmList.map((flimItem) {
        //       final id = flimItem.id;
        //       // print(id);
              //   return InkWell(
              //   onTap: () {
              //     // print(id);
              //     Navigator.of(context).push(
              //     MaterialPageRoute(
              //       builder: (context) => MoviePage(id),
              //     ),
              //   );
              //   },
              //   child: Container(
              //     margin: EdgeInsets.only(left: 10),
              //       height: 300,
              //       width: 180,
              //       decoration: BoxDecoration(
              //         color: Color(0xFF292B37),
              //         borderRadius: BorderRadius.circular(10),
              //         boxShadow: [
              //           BoxShadow(
              //             color: Color(0xFF292B38).withOpacity(0.5),
              //             spreadRadius: 5,
              //             blurRadius: 6,
              //           ),
              //         ],
              //       ),
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           ClipRRect(
              //             borderRadius: BorderRadius.only(
              //               topLeft: Radius.circular(10),
              //               topRight: Radius.circular(10),
              //             ),
              //             child: Image.asset(
              //               'assets/images/${flimItem.image}',
              //               height: 200,
              //               width: 200,
              //               fit: BoxFit.cover,
              //             ),
              //           ),
              //           Padding(
              //             padding: EdgeInsets.symmetric(
              //               horizontal: 5,
              //               vertical: 10,
              //             ),
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Text(
              //                   '${flimItem.name}',
              //                   style: TextStyle(
              //                     color: Colors.white,
              //                     fontSize: 21,
              //                     fontWeight: FontWeight.w500,
              //                     overflow: TextOverflow.ellipsis
              //                   ),
              //                 ),
              //                 SizedBox(
              //                   height: 5,
              //                 ),
              //                 Text(
              //                   '${flimItem.catName}',
              //                   style: TextStyle(
              //                     color: Colors.white54,
              //                     overflow: TextOverflow.ellipsis
              //                   ),
              //                 ),
              //                 SizedBox(height: 8),
              //                 Row(
              //                   children: [
              //                     Icon(Icons.star, color: Colors.amber),
              //                     SizedBox(width: 5),
              //                     Text(
              //                       '${flimItem.rating}',
              //                       style: TextStyle(
              //                           color: Colors.white54, fontSize: 16),
              //                     )
              //                   ],
              //                 )
              //               ],
              //             ),
              //           )
              //         ],
              //       ),
              //     ),             
          
              // );
        //       }).toList(),    
        //   ),
        // )
      ],
    );
  }
}
