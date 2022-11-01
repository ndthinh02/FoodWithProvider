class Categories {
  String imageUrl;
  String nameCategory;
  double rate;
  int rateStar;
  int comments;
  String difficulty;
  double kilometer;
  int timer;
  int id;
  Categories(
      {required this.nameCategory,
      required this.rateStar,
      required this.comments,
      required this.rate,
      required this.difficulty,
      required this.timer,
      required this.kilometer,
      required this.imageUrl,
      required this.id});
}
