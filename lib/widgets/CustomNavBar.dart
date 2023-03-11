import 'package:flutter/material.dart';
import '../models/film.dart';
import '../pages/GridListFilmPage.dart';
import '../pages/ProfilePage.dart';
import '../pages/LoginPage.dart';
import '../pages/HomePage.dart';
// import '../pages/Demo.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    List<Film> filmList = Film.generateFilm();
    return Container(
      height: 64,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Color(0xFF292B37),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ));
            },
            child: Icon(
              Icons.home,
              size: 35,
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: () {
              // String status = 'ALL';
              // print(status);
              Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => GridListFilmPage(status : 'All'),
                  ));
              // Navigator.of(context).push(
              //     MaterialPageRoute(
              //       builder: (context) => GridListFilmPage(),
              //     ));
            },
            child: Icon(
              Icons.grid_view,
              size: 35,
              color: Colors.white,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'categoryPage');
            },
            child: Icon(
              Icons.category,
              size: 35,
              color: Colors.white,
            ),
          ),
          
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ));
            },
            child: Icon(
              Icons.logout_outlined,
              size: 35,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
