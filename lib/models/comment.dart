class Comment{
  String? id;
  String? filmId;
  String? emailUser;
  String? content;

  Comment(this.id, this.filmId, this.emailUser, this.content);

  static List<Comment> generateComment(){
    return [
      Comment(
        '1',
        '1',
        'ngocmy@mail.com',
        'Phim rất hay'
      ),
      Comment(
        '2',
        '1',
        'ngocmy@mail.com',
        'Phim hay xuất sắc nha quý dị'
      ),
      Comment(
        '3',
        '1',
        'ngocmy@mail.com',
        'Phim đáng để coi'
      ),
      Comment(
        '4',
        '1',
        'ngocmy@mail.com',
        'Phim rất hay và ho'
      ),
    ];
  } 
}