class Category{
  String id;
  String? name;
  String? image;
  Category(this.id, this.name, this.image);
   static List<Category> generateCategory() {
    return [
      Category(
        '1',
        'Cổ trang',
        'cotrang.jpg',
      ),
      Category(
        '3',
        'Hành động',
        'hanhdong.jpg',
      ),
      Category(
        '4',
        'Võ thuật',
        'vothuat.jpg',
      ),
      Category(
        '5',
        'Kinh dị',
        'kinhdi.jpg',
      ),
      Category(
        '6',
        'Tâm lý',
        'tamly.jpg',
      ),
      Category(
        '7',
        'Viễn tưởng',
        'vientuong.jpg',
      ),
      Category(
        '8',
        'Hoạt hình',
        'hoathinh.jpg',
      ),
      Category(
        '9',
        'Phim ma',
        'phimma.jpg',
      ),
      Category(
        '10',
        'Trinh thám',
        'trinhtham.jpg',
      ),
      Category(
        '11',
        'Tội phạm',
        'toipham.jpg',
      ),
      Category(
        '12',
        'Học đường',
        'hocduong.jpg',
      ),
    ];
  }
}


 

