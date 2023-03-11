import 'package:flutter/material.dart';
import '../models/film.dart';
import '../models/comment.dart';
import 'package:firebase_auth/firebase_auth.dart';
class CommentWidget extends StatefulWidget {
  final Film film;
  const CommentWidget(this.film,{super.key});
  @override
  State<CommentWidget> createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<CommentWidget> {
  List<Comment> commentList = [];
  String status = '';
  String commentId = '';
   
  @override
  initState() {
    // TODO: implement initState
    super.initState();
    commentList = Comment.generateComment();
    commentList.removeWhere((commentItem) => commentItem.filmId != widget.film.id);
    status = 'Submit';
  }
  @override
  final TextEditingController _commentController = TextEditingController();
  Widget build(BuildContext context) {
  final user = FirebaseAuth.instance.currentUser;
  print(user?.email);
  
     return Column(
     children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Comment', style: TextStyle(
              color: Colors.white,
              fontSize: 25, 
              fontWeight: FontWeight.w500,
            ),
            ), 
          ],
        ),
      ),
      SizedBox(height: 15),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child:  Container(
        height: 50,
        padding: EdgeInsets.symmetric(horizontal : 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: TextField(
          controller: _commentController,
          style: TextStyle(fontSize: 18, color: Colors.black),
          decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Comment...',
                hintStyle: TextStyle(
                  color: Colors.black54,
                )
            ),
          ),
        ),
        
      ),
      SizedBox(
        height: 10,
      ),
      InkWell(
        onTap: (){
          
            if(status == 'Submit'){
               setState(() { //submit
                String id = DateTime.now().millisecondsSinceEpoch.toString();
                String filmId = widget.film.id.toString();
                Comment newComment = new Comment(id, filmId, user?.email, _commentController.text);
                  commentList.add(newComment);
                });   
            }else{
              int index = 0;
              for(int i = 0; i< commentList.length; i++){
                if(commentId == commentList[i].id){
                  index = i;
                }
              }
                setState((){
                  commentList[index].content = _commentController.text;
                  status = 'Submit';

                });

            }
            _commentController.clear();
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            decoration: BoxDecoration(
              color: Color(0xFF292B37),
              borderRadius: BorderRadius.circular(10),
              boxShadow:[
               BoxShadow(
                 color: Color(0xFF292B37).withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 4,
               ),
              ],
            ),
            child: status == 'Submit' ? Icon(Icons.send_outlined, color: Colors.white, size: 35,) : Text('Update', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500))
            
          ),
      ),
      SizedBox(height: 10),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: 400,
        child: ListView.builder(
          itemCount: commentList.length,
          itemBuilder: (BuildContext context,int index){
            return Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  ClipRRect(     
                      borderRadius: BorderRadius.circular(30),              
                      child: Image.asset('assets/images/profile.png', height: 50,
                      width: 50,fit: BoxFit.cover),
                    ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    // height: 60,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.grey[350],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('${commentList[index].emailUser}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,)),
                            SizedBox(
                              height: 5,
                            ),
                            Text("${commentList[index].content}",style: TextStyle(fontSize: 16,)),
                          ],
                        ),
                        Container(
                          child: Row(
                            children: [
                              InkWell(
                                onTap:(){
                                  setState((){
                                  _commentController.text = commentList[index].content.toString();
                                    status = 'Update';
                                    commentId = commentList[index].id.toString();
                                  });                                  
                                },
                                child: Icon(Icons.edit),
                              ),
                              InkWell(
                                onTap:(){
                                  setState((){
                                    commentList.removeWhere((commentItem)=>commentItem.id == commentList[index].id);
                                  });
                                },
                                child: Icon(Icons.delete),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),             
                ],
              ),
            );
          },
        ),
      ),
      SizedBox(height: 50),
     ],
    );
  }
}
