class Film{
  String? id;
  String? name;
  String? rating;
  String? catId;
  String? catName;
  String? image;
  String? linkUrl;
  String? description;
  Film(this.id,this.name, this.rating, this.catId, this.catName, this.image, this.linkUrl, this.description);
  
  // static List<Film> generateFilm(){
  //   return [
  //     Film(
  //       '1',
  //       '65 - TRẬN CHIẾN THỜI TIỀN SỬ',
  //       "8.0",
  //       '5',
  //       'Kinh dị',
  //       'film1.jpg',
  //       'linkUrl',
  //       'Sau cú va chạm thảm khốc, tàu vũ trụ của Mills (Adam Driver) bay thẳng đến một hành tinh không xác định. Với kiến thức nhạy bén của mình, Mills nhanh chóng nhận ra hành tinh không xác định này chính là Trái Đất của 65 triệu năm trước. Liệu với những công nghệ tương lai đang có, Mills có thể sống sót trước những loài khủng long và sinh vật tiền sử đáng sợ? 65 - Trận Chiến Thời Tiền Sử đến từ bộ đôi biên kịch từng tạo nên “A Quiet Place” và được nhào nặn bởi chính NSX nổi tiếng Sam Raimi. Và, với vai chính được thủ vai bởi diễn viên từng đoạt giải Oscar - Adam Driver.',
  //     ),      
  //   ];
  // }

  static List<Film> generateFilm() {
    return [
      Film(
        '1',
        '65 - TRẬN CHIẾN THỜI TIỀN SỬ',
        "8.0",
        '5',
        'Kinh dị',
        'film1.jpg',
        'https://www.youtube.com/watch?v=L0EtcER5TDg',
        'Sau cú va chạm thảm khốc, tàu vũ trụ của Mills (Adam Driver) bay thẳng đến một hành tinh không xác định. Với kiến thức nhạy bén của mình, Mills nhanh chóng nhận ra hành tinh không xác định này chính là Trái Đất của 65 triệu năm trước. Liệu với những công nghệ tương lai đang có, Mills có thể sống sót trước những loài khủng long và sinh vật tiền sử đáng sợ? 65 - Trận Chiến Thời Tiền Sử đến từ bộ đôi biên kịch từng tạo nên “A Quiet Place” và được nhào nặn bởi chính NSX nổi tiếng Sam Raimi. Và, với vai chính được thủ vai bởi diễn viên từng đoạt giải Oscar - Adam Driver.',
      ),  
      Film(
        '2',
        'Thế Thân 2 - Avatar 2ame',
        '8.1',
        '7',
        'Khoa học viễn tưởng',
        'film2.jpg',
        'https://www.youtube.com/watch?v=JKQkA234dJc',
        'Vào một thập kỷ trước, Avatar đã tạo nên cơn địa chấn tại các rạp chiếu phim, khiến người người nhà nhà ùn ùn kéo nhau ra rạp để tận mắt chứng kiến công nghệ 3D. Nhà làm phim vĩ đại James Cameron cũng cho biết, các phần tiếp theo của loạt phim đã lên kế hoạch sản xuất. Và tác phẩm xếp thứ 2 bảng xếp hạng doanh thu phim chiếu rạp mọi thời đại này dự kiến ra mắt phần tiếp theo vào 12.2022. Avatar 2 hứa hẹn sẽ đem đến cho khán giả những thước phim mãn nhãn, ly kỳ sống động nhất.',
        
      ),
       Film(
        '3',
        'John Wick: Chapter 4',
        '8.2',
        '3',
        'Hành động',
        'film3.jpg',
        'https://www.youtube.com/watch?v=qEVUtrk8_B4',
        'John Wick là một phát triển bất ngờ từ bộ phim lẻ về sát thủ báo thù với ngôi sao Keanu Reeves. Chapter 4 là lúc cuộc chiến nổ ra khi Jardani Jovovich đã bị dồn đến đường cùng trong phần 3: Chuẩn Bị Chiến Tranh, Hội Tối Thượng vừa có quyền vừa có tiền là thế lực bất khả chiến bại, làm cách nào để đánh bại bọn chúng? Là những mong đợi và tò mò của khán giả. Tuy nhiên, lịch chiếu lại có sự thay đổi lớn do tình hình Covid 19 diễn biến phức tạp thay vì công chiếu vào ngày 21.05.2021 vừa qua thì John Wick: Chapter 4 đợi đến 27.05.2022 mới có thể ra rạp.',
        
      ),
       Film(
        '4',
        'Aquaman And The Lost Kingdom (2023)',
        '8.4',
        '3',
        'Hành động',
        'film4.jpg',
        'https://www.youtube.com/watch?v=zL2BtTdIuLI',
        'Diễn viên chính: Jason Momoa, Amber Heard, Yahya Abdul-Mateen II, Temuera Morrison',
        
      ),
       Film(
        '5',
        'Black Adam (2022)',
        '8.5',
        '3',
        'Hành động',
        'film5.jpg',
        'https://www.youtube.com/watch?v=Fva_W_AF0IM',
        'Diễn viên chính: Brie Larson, Teyonah Parris, Zawe Ashton',
        
      ),
       Film(
        '6',
        'Detective Conan: The Bride of Halloween (2022)',
        '8.6',
        '8',
        'Hoạt hình',
        'film6.jpg',
        'https://www.youtube.com/watch?v=LzCD9wPNd6A',
        'Đạo diễn: Gosho Aoyama, Susumu Mitsunaka',
        
      ),
       Film(
        '7',
        'DC League of super pets (2022)',
        '8.7',
        '8',
        'Hoạt hình',
        'film7.jpg',
        'https://www.youtube.com/watch?v=1jkw2JPCl18',
        'Đạo diễn: Jared Stern',
        
      ),
       Film(
        '8',
        'Thor: Love and Thunder',
        '8.8',
        '12',
        'Hài hước',
        'film8.jpg',
        'https://www.youtube.com/watch?v=UBgPypHGAqE',
        'Diễn viên chính: Chris Hemsworth, Natalie Portman, Chris Pratt',
        
      ),
       Film(
        '9',
        'Moonfall',
        '8.9',
        '7',
        'Viễn tưởng',
        'film9.jpg',
        'https://www.youtube.com/watch?v=ivIwdQBlS10',
        'Diễn viên: Charlie Plummer, Donald Sutherland, Halle Berry, John Bradley.',
        
      ),
       Film(
        '10',
        'Dead On The Nile: Án mạng trên sông Nile',
        '9.0',
        '11',
        'Tội phạm',
        'film10.jpg',
        'https://www.youtube.com/watch?v=4hhOZ1QWU4g',
        'Diễn viên: Gal Gadot, Armie Hammer, Kenneth Branagh, Emma Mackey',
        
      ),
       Film(
        '11',
        'The Lost City',
        '9.1',
        '12',
        'Hài hước',
        'film11.jpg',
        'https://www.youtube.com/watch?v=xohAPIRNzuo',
        'Diễn viên: Sandra Bullock, Channing Tatum, Daniel Radcliffe, Brad Pitt',
        
      ),
       Film(
        '12',
        'Fantastic Beasts: The Secrets ò Dumbledore',
        '9.2',
        '12',
        'Học đường',
        'film12.jpg',
        'https://www.youtube.com/watch?v=Y9dr2zw-TXQ',
        'Diễn viên: Eddie Redmayne, Mads Mikkelsen, Ezra Miller, Katherine Waterston',
        
      ),
       Film(
        '13',
        'Minion: Sự trỗi dậy của Gru',
        '9.3',
        '8',
        'Hoạt hình',
        'film13.jpg',
        'https://www.youtube.com/watch?v=dTQXlDV16SY',
        'Diễn viên: Steve Carell, Lucy Lawless, Michelle Yeoh',
        
      ),
       Film(
        '14',
        'The Witch 2: Sát thủ nhân tạo 2',
        '9.4',
        '3',
        'Hành động',
        'film14.jpg',
        'https://www.youtube.com/watch?v=NprcHuYuP54',
        'Diễn viên: Kim Da Mi, Lee Jong Suk, Park Eun Bin',
        
      ),
       Film(
        '15',
        'Godzilla vs Kong - Godzilla đại chiến Kong (2021)',
        '9.5',
        '7',
        'Viễn tưởng',
        'film15.jpg',
        'https://www.youtube.com/watch?v=yFpuUGFS1Kg',
        'Khởi chiếu ngày 26/3/2021 bộ phim thu hút đông đảo người xem với nội dung kịch tính cùng những kỹ xảo điêu luyện. Bộ phim là hành trình tìm lại ngôi nhà thật sự của Kong và đồng đội cùng với Jia là một cô gái trẻ mồ côi. Cuộc thám hiểm đầy gian nguy khi bất ngờ họ gặp phải Godzilla - kẻ thù truyền kiếp của Kong. Và tiếp theo đó, màn đụng độ của hai kẻ khổng lồ đã đem người xem đi từ bất ngờ này đến bất ngờ khác.',
        
      ),
       Film(
        '16',
        'Người Nhân Bản - SEOBOK phim chiếu rạp Hàn Quốc 2021',
        '9.6',
        '7',
        'Viễn tưởng',
        'film16.jpg',
        'https://www.youtube.com/watch?v=URStJ9pzG-4',
        'Phim hành động Người Nhân Bản công chiếu khá muộn vào tháng 4/2021 nhưng vẫn nhận được nhiều trông đợi của khán giả. Phim kể về Ki-hun một cựu đặc vụ sống tách biệt với thế giới bên ngoài sau những biến cố cuộc đời. Nam chính chịu trách nhiệm di chuyển một đối tượng thực nghiệm được tạo ra bằng cách nhân bản tế bào gốc và biến đổi gen. Tuy nhiên, nhiệm vụ ngày càng trắc trở khi tên này trở thành mục tiêu săn đuổi của nhiều thế lực đen tối. Những thước phim hành động đầy kịch tính là điểm nhấn cho 114 phút phim, khiến khán giả khó mà rời mắ',
        
      ),
       Film(
        '17',
        'Thám Tử Lừng Danh Conan: Viên Đạn Đỏ - phim chiếu rạp cho trẻ em',
        '9.7',
        '8',
        'Hoạt hình',
        'film17.jpg',
        'https://www.youtube.com/watch?v=qZQJiyqBZHg',
        'Khởi chiếu ngày 23/4/2021, bối cảnh phim là khi Tokyo chuẩn bị đón một thế vận hội thể thao lớn nhất thế giới có tên "WSG: World Sports Games". Nội dung phim kể về hành trình đi tìm lời giải cho sự mất tích bí ẩn của những nhà tài trợ cho thế vận hội. Theo chân những suy luận đày logic và sắc bén của thám tử Conan, chắc chắn sẽ khiến bạn cực kì tò mò và thích thú.',
        
      ),
       Film(
        '18',
        'Giải Cứu “Guy” - phim chiếu rạp Ấn Độ Free Guy',
        '9.8',
        '12',
        'Hài hước',
        'film18.jpg',
        'https://www.youtube.com/watch?v=vskOFGyN97k',
        'Phim Giải Cứu Guy dự kiến khởi chiếu vào ngày 13/8 tới đây, là một thể loại phim khoa học viễn tưởng với nhiều tình tiết hấp dẫn. Trong phim nhân viên giao dịch ngân hàng - Guy, phát hiện mình thực chất là người chơi nền trong trò chơi điện tử thế giới mở. Anh quyết định trở thành người anh hùng và viết lại câu chuyện của chính mình. Bộ phim là hành trình trở thành người giải cứu thế giới của Guy, theo cách riêng của chính mình.',
        
      ),
       Film(
        '19',
        'Căn phòng tử thần: Cái chết trở lại - Escape Room',
        '9.9',
        '5',
        'Kinh dị',
        'film19.jpg',
        'https://www.youtube.com/watch?v=NI-KuGyCXos',
        'Căn phòng tử thần: Cái chết trở lại là một bộ phim kinh dị đình đám sẽ được công chiếu vào ngày 16/07/2021. Bộ phim kể về việc những người từng thắng cuộc bị đưa vào một căn phòng bị khóa kín, hoặc phải tìm mọi cách thoát ra hoặc là bỏ mạng ở đó. Quy mô và độ khó của căn phòng được nâng cấp lên gấp bội so với những tập trước. Điều này đòi hỏi người chơi phải vận dụng trí óc sức lực và tình thần đồng đội mới có thể vượt qua những thử thách để trở về an toàn. Đồng hành cùng nhân vật trên con đường vật lộn với sự sống, người xem như được cởi mở trí óc và suy ngẫm về những gian nan trong đời sống hàng ngày.',
        
      ),
       Film(
        '20',
        'Alienoid: Cuộc chiến xuyên không - Đa vũ trụ style Hàn Quốc',
        '8.0',
        '3',
        'Hành động',
        'film20.png',
        'https://www.youtube.com/watch?v=ZmPvNvVsJCY',
        '“Alienoid: Cuộc chiến xuyên không” là một bom tấn phim chiếu rạp Hàn Quốc giải trí đúng nghĩa. Bạn sẽ có được những trận cười sảng khoái đến căng cơ mặt. Qua bộ phim ta cũng có thể thấy tham vọng nâng cao vị thế điện ảnh Hàn Quốc trên thị trường quốc tế của đạo diễn Choi Dong-hoon.s',
        
      ),
       Film(
        '21',
        'Người Môi Giới - Phim chiếu rạp Hàn Quốc hay nhất ',
        'rating',
        '7',
        'Viễn tưởng',
        'film21.jpeg',
        'https://www.youtube.com/watch?v=bHQHazW5uLM',
        'Người Môi Giới là một bộ phim chiếu rạp Hàn Quốc mang nội dung nhân văn sâu sắc. Phim kể về hành trình đi tìm một gia đình mới cho những đứa trẻ bị bỏ lại trong “chiếc hộp em bé” của người môi giới. Phim gồm 3 nhân vật chính là Sang Hyun - chủ tiệm giặt ủi nợ nần kiêm người môi giới; Dong Soo - Bạn đồng hành trong các phi vụ môi giới với Sang Hyun và cũng từng là trẻ mồ côi; So Young - Bà mẹ trẻ tham gia vào chuyến đi kỳ lạ tìm kiếm gia đình tốt hơn cho đứa con mà mình đã bỏ vào chiếc hộp em bé. Vậy liệu rằng kết cục bộ phim chiếu rạp Hàn Quốc chính kịch mới nhất 2022 này sẽ như thế nào thì mời bạn tự mình khám phá nhé!.',
        
      ),
       Film(
        '22',
        'Parasite - Phim điện ảnh Hàn hay nhất đoạt giải Oscar ',
        '8.2',
        '12',
        'Học đường',
        'film22.jpeg',
        'https://www.youtube.com/watch?v=5xH0HfJHsaY',
        'Với nội dung xuất sắc, lột tả chân thật về góc khuất của xã hội Hàn Quốc thì Parasite đã dễ dàng ẵm được những giải thưởng danh giá gồm: Giải Cành Cọ Vàng tại Liên hoan phim Cannes 2019; 4 giải thưởng tại lễ trao giải Oscar 2020;... Đồng thời, đây cũng là bộ phim chiếu rạp Hàn Quốc hay khiến đông đảo khán giả đổ xô liên tục đến rạp chiếu để thưởng thức.',
        
      ),
       Film(
        '23',
        'Train To Busan - Phim điện ảnh Hàn hay nhất mọi thời đại',
        '10',
        '5',
        'Kinh dị',
        'film23.jpeg',
        'https://www.youtube.com/watch?v=pyWuHv2-Abk',
        'Đây là một chiếu rạp Hàn Quốc hành động về đề tài Zombie vô cùng thú vị và gây cấn. Train to Busan do Yeon Sang-ho đạo diễn và cũng là bộ phim đánh dấu sự trở lại màn ảnh rộng của diễn viên tài năng Gong Yoo.',
        
      ),
       Film(
        '24',
        'Bỗng dưng trúng số - Bộ phim chiếu rạp Hàn Quốc gây bão phòng vé',
        '8.4',
        '12',
        'Hài hước',
        'film24.png',
        'https://www.youtube.com/watch?v=D3KbO3QF-lg',
        '“Bỗng Dưng Trúng Số” là bộ phim hài chiếu rạp Hàn Quốc siêu kinh điển đến giờ vẫn còn gây sốt tại các phòng vé ở Việt Nam. Bộ phim lấy bối cảnh tại khu biên giới quân Hàn - Triều kể về người lính Hàn Chun Woo (Go Kyung-Pyo) vô tình nhặt được tờ vé số trúng độc đắc. Nhưng đen thay anh lại để tấm vé bay sang bên kia biên giới rơi vào tay người lính Triều Tiên Yong Ho (Yi-kyeong Lee). Từ đó nhiều tình huống éo le cứ thế tiếp tục kéo dài xuyên suốt mạch phim tạo ra những tràng cười không ngớt trong phòng chiếu.',
        
      ),
       Film(
        '25',
        'Nghề Siêu Khó',
        '8.5',
        '12',
        'Hài hước',
        'film25.jpeg',
        'https://www.youtube.com/watch?v=3DC2rFefx2o',
        'Nếu muốn tìm kiếm một bộ phim chiếu rạp Hàn Quốc hành động vừa mang yếu tố hài hước vừa có nhiều tình tiết đặc sắc thì bạn không thể bỏ qua Nghề Siêu Khó. Bộ phim kể về một nhóm cảnh sát phòng chống ma túy gồm 5 thành viên với 5 tính cách khác nhau. Biệt đội này có một điểm đặc biệt là hễ bắt tay vào vụ án nào thì vụ án đó sẽ thất bại. Điều này đã khiến cho những đồng đội khác bắt đầu nghi ngờ năng lực làm việc của nhóm cảnh sát này. ',
        
      ),
       Film(
        '26',
        'Thủy chiến đảo Hansan: Rồng trỗi dậy',
        '8.6',
        '3',
        'Hành động',
        'film26.png',
        'https://www.youtube.com/watch?v=OGiNuEBEF6Q',
        'Tiếp nối thành công bom tấn sử thi Đại Thủy Chiến năm 2014, đạo diễn Han-min Kim đã cho bấm máy phần phim tiếp theo về vị Đại Đô Đốc thủy quân nổi danh của bán đảo Triều tiên, Yi Sun Shin. “Thủy chiến đảo Hansan: Rồng trỗi dậy” sẽ tái hiện lại trận đánh hào hùng Myeongnyang, nơi mà cái tên Yi Sun Shin trở thành cơn ác mộng trong tâm trí của thủy quân Nhật Bản mãi mãi về sau. Thị giác của bạn sẽ được thỏa mãn bằng những giao chiến đầy kịch tính của Quy bối thuyền lừng danh trên đầu các con sóng dữ, đặc biệt là đội hình Cánh Sếu của Yi Sun Shin đã khiến quân Nhật Bản đại bại một cách đầy thuyết phục.',
        
      ),
       Film(
        '27',
        'Quyết tâm chia tay - Khi bi thương hóa tình yêu',
        '8.7',
        '11',
        'Tội phạm',
        'film27.png',
        'https://www.youtube.com/watch?v=mTiNtVzysWU',
        'Hơn hai tiếng đồng hồ của bộ phim, bạn sẽ được đắm chìm vào một câu chuyện đau đớn nhưng đẹp đẽ. Nhưng có một điều bạn phải biết khi cái bi đã chạm đến cực hạn cái đẹp từ đó mới được sinh ra dưới lớp tro tàn, đó chính là ý nghĩa khi “Quyết tâm chia tay” hạ màn.',
        
      ),
       Film(
        '28',
        'Mr.Zoo: The Missing Vip',
        '8.8',
        '7',
        'Viễn tưởng',
        'film28.jpg',
        'linkUrl',
        'Mr.Zoo là một bộ phim lẻ Hàn Quốc thuộc thể loại hình sự hài hước. Câu chuyện xoay quanh Joo Taegu - một đặc vụ thuộc Cơ quan Tình báo Quốc gia.',
        
      ),
       Film(
        '29',
        'Lối Thoát Trên Không',
        '8.9',
        '3',
        'Hành động',
        'film29.jpg',
        'https://www.youtube.com/watch?v=CVwIElayaK8',
        'Một trong những bộ phim lẻ Hàn Quốc đáng xem nhất bạn có thể lựa chọn đó là Exit. Bộ phim là câu chuyện về anh chàng Yong Nam với quyết tâm trở thành một nhà leo núi lừng danh. Éo le thay, anh không những không thực hiện được nguyện vọng của bản thân mà còn phải làm một công việc tạm bợ.',
        
      ),
       Film(
        '30',
        'Zombie Đại Hạ Giá',
        '9.0',
        '12',
        'Hài hước',
        'film30.png',
        'linkUrl',
        'Zombie For Sale lấy đề tài thây ma quen thuộc nhưng được khai thác dưới một góc nhìn hoàn toàn khác với loài sinh vật khát máu này. Nếu bạn chỉ đơn thuần cần sự giải trí mà không quan tâm đến nội dung thì đây là bộ phim dành cho bạn cười đến sáng.',
        
      ),
       Film(
        '31',
        'Nhiệm Vụ Khả Thi',
        '9.1',
        '12',
        'Hài hước',
        'film31.jpg',
        'https://www.youtube.com/watch?v=oR-aNW2MPrY',
        'Nhiệm Vụ Khả Thi xoay quanh câu chuyện của bộ đôi cộng sự bất đắc dĩ Yoo Da Hee và Woo Soo Han. Những tình tiết hài hước, bất ngờ liên tục xảy đến với bộ đôi công sự này. Cao trào của phim được đẩy lên khi cả hai rơi vào diện tình nghi khi nhân chứng bị sát hại một cách bí ẩn. Đây là một bộ phim vừa ra mắt vào năm 2021, được xây dựng theo mô típ hành động kiểu mới rất đáng xem.',
        
      ),
       Film(
        '32',
        'New Year Blues',
        '9.2',
        '6',
        'Tâm lý',
        'film32.jpg',
        'https://www.youtube.com/watch?v=k62Of2ttD4s',
        'New Year Blues là một phim lẻ tình cảm kể về cuộc sống 1 tuần trước năm mới của 4 đôi nam nữ ở khắp nơi trên thế giới. Mạch phim có tính liên kết, nội dung nhẹ nhàng, đơn giản, chủ yếu tập trung vào phác họa tâm lý nhân vật. Mỗi cặp đôi sẽ có mỗi câu chuyện tình yêu khác nhau. Có người sắp kết hôn, người được thăng tiến, người bị phản bội, người chuẩn bị cầu hôn,...',
        
      ),
       Film(
        '33',
        'Và Em Sẽ Đến',
        '9.3',
        '6',
        'Tình cảm',
        'film33.jpg',
        'https://www.youtube.com/watch?v=5LMXVHO6IEE',
        'Đây là một bộ phim được chuyển thể từ tiểu thuyết ngôn tình vô cùng đặc sắc. Câu chuyện tình yêu cảm động của đôi nhân vật chính khiến người xem không khỏi rơi nước mắt. s',
        
      ),
       Film(
        '34',
        'Tình Yêu Và Trói Buộc',
        '9.4',
        '12',
        'Hài hước',
        'film34.png',
        'https://www.youtube.com/watch?v=2ULu_81QBUE',
        'Love And Leashes đánh dấu bước đột phá trong công thức làm phim truyền thống của dòng phim lãng mạn Hàn Quốc. Khi vừa mới ra mắt, bộ phim đã tạo nên cơn sốt không chỉ nhờ vào nội dung độc lạ mà còn phơi bày hiện trạng xã hội hội và nói lên nhiều thông điệp quý giá.',
        
      ),
       Film(
        '35',
        'Lắng Nghe Giai Điệu Tình Yêu',
        '9.5',
        '6',
        'Tâm lý',
        'film35.jpg',
        'linkUrl',
        'Thật thiếu sót nếu bỏ lỡ bộ phim lẻ Hàn Quốc tình cảm Tune in for love. Nội dung phim xoay quanh câu chuyện tình yêu của Mi Soo và Hyun Woo. Khoảnh khắc lần đầu gặp nhau tại tiệm bánh, cả hai đã chớm nở tình cảm dành cho đối phương',
        
      ),
       Film(
        '36',
        'Giai Điệu Của Bạn, Tiếng Lòng Của Tôi',
        '9.6',
        '6',
        'Tâm lý',
        'film36.png',
        'https://www.youtube.com/watch?v=O2x8gaL5Omw',
        'Nếu muốn tìm kiếm một bộ phim ấm áp cho những ngày đông lạnh giá thì Wish You: Your Melody In My Heart dành riêng cho bạn. Khác với bộ phim ngôn tình Hàn Quốc truyền thống, Wish You mang chủ đề LGBT kể về câu chuyện tình yêu giữa hai nam nhân Kang In Soo (Kang Ye Na) và Yoon Sang Yi (Lee Sang)',
      ),
    ];
  }
}