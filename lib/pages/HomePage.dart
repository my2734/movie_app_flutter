import 'package:flutter/material.dart';
import '../widgets/UpcommingWidget.dart';
import '../widgets/NewMovieWidget.dart';
import '../widgets/CustomNavBar.dart';
import './ResultSearch.dart';
import 'package:firebase_auth/firebase_auth.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchControll = TextEditingController();


  @override
  Widget build(BuildContext context) {
  final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello Alex',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Want to watch?',
                            style: TextStyle(
                              color: Colors.white54,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset('assets/images/profile.png',
                            height: 60, width: 60),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Color(0xFF292B37),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                     
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        width: 300,
                        child: TextField(
                        controller: _searchControll,
                        style: TextStyle(fontSize: 18, color: Colors.white),
                        decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                color: Colors.white54,
                              )
                          ),
                        ),
                      ),
                      InkWell(
                        onTap:(){
                          Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ResultSearch(search: _searchControll.text),
                          ));
                          // _searchControll.clear();
                        },
                        child:  Icon(
                        Icons.search,
                        color: Colors.white54,
                        size: 30,
                      ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30),
                UpcommingWidget(),
                SizedBox(height: 40),
                NewMovieWidget(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}


// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//   // final TextEditingController _searchController = TextEditingController();

//   @override

//   Widget build(BuildContext context) {
    // return Scaffold(
    //   body: SingleChildScrollView(
    //     child: SafeArea(
    //       child: Container(
    //         margin: EdgeInsets.only(bottom: 20),
    //         child: Column(
    //           children: [
    //             Padding(
    //               padding: EdgeInsets.symmetric(horizontal: 10, vertical: 18),
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Column(
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: [
    //                       Text(
    //                         'Hello Alex',
    //                         style: TextStyle(
    //                           color: Colors.white,
    //                           fontSize: 28,
    //                           fontWeight: FontWeight.w500,
    //                         ),
    //                       ),
    //                       Text(
    //                         'Want to watch?',
    //                         style: TextStyle(
    //                           color: Colors.white54,
    //                           fontWeight: FontWeight.w500,
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                   ClipRRect(
    //                     borderRadius: BorderRadius.circular(30),
    //                     child: Image.asset('assets/images/profile.png',
    //                         height: 60, width: 60),
    //                   )
    //                 ],
    //               ),
    //             ),
    //             Container(
    //               height: 60,
    //               padding: EdgeInsets.all(10),
    //               margin: EdgeInsets.symmetric(horizontal: 10),
    //               decoration: BoxDecoration(
    //                 color: Color(0xFF292B37),
    //                 borderRadius: BorderRadius.circular(10),
    //               ),
    //               child: Row(
    //                 children: [
    //                   Icon(
    //                     Icons.search,
    //                     color: Colors.white54,
    //                     size: 30,
    //                   ),
    //                   Container(
    //                     margin: EdgeInsets.only(left: 5),
    //                     width: 300,
    //                     // child: TextFormField(
                          
    //                     //   style: TextStyle(color: Colors.white),
    //                       // decoration: InputDecoration(
    //                       //     border: InputBorder.none,
    //                       //     hintText: 'Search',
    //                       //     hintStyle: TextStyle(
    //                       //       color: Colors.white54,
    //                       //     )
    //                       // ),
    //                     // ),
    //                     child: TextField(
    //                     // controller: _searchControler,
    //                     style: TextStyle(fontSize: 18, color: Colors.white),
    //                     decoration: InputDecoration(
    //                           border: InputBorder.none,
    //                           hintText: 'Search',
    //                           hintStyle: TextStyle(
    //                             color: Colors.white54,
    //                           )
    //                       ),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //             SizedBox(height: 30),
    //             UpcommingWidget(),
    //             SizedBox(height: 40),
    //             NewMovieWidget(),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    //   bottomNavigationBar: CustomNavBar(),
    // );
//   }
// }
