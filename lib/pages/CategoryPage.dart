import 'package:flutter/material.dart';
import '../widgets/CustomNavBar.dart';
import '../models/category.dart';
import './GridListFilmPage.dart';


class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final categoryList = Category.generateCategory();
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
                    Text("Discover", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500,),),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                child: ListView.builder(
    padding: const EdgeInsets.all(8),
    itemCount: categoryList.length,
    itemBuilder: (BuildContext context, int index) {
      return InkWell(
        onTap: (){
          String catId = categoryList[index].id;
          // print(catId);
           Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => GridListFilmPage(status : '${catId}'),
                  ));
        },
        child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children:[
                          ClipRRect(
                            child: Image.asset('assets/images/${categoryList[index].image}', height: 70, width: 90,fit: BoxFit.cover),
                          ),
                          SizedBox(width: 10),
                          Text('${categoryList[index].name}', style: TextStyle(fontSize: 22, color: Colors.white),),
                          Spacer(),
                          // Icon(Icons.arraw_forward_ios, color: Colors.white, size: 20),                    
                        ],
                      ),
                    )
      );
    }
  ),),
              ),
            ],
          ),
       ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
