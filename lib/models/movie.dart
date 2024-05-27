class Movie {
  final String id;
  final String title;
  final String originalTitle;
  final String originalTitleRomanised;
  final String image;
  final String movieBanner;
  final String description;
  final String director;
  final String producer;
  final String releaseDate;
  final String runningTime;
  final String rtScore;

  Movie({
    required this.id,
    required this.title,
    required this.originalTitle,
    required this.originalTitleRomanised,
    required this.image,
    required this.movieBanner,
    required this.description,
    required this.director,
    required this.producer,
    required this.releaseDate,
    required this.runningTime,
    required this.rtScore,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'],
      title: json['title'],
      originalTitle: json['original_title'],
      originalTitleRomanised: json['original_title_romanised'],
      image: json['image'],
      movieBanner: json['movie_banner'],
      description: json['description'],
      director: json['director'],
      producer: json['producer'],
      releaseDate: json['release_date'],
      runningTime: json['running_time'],
      rtScore: json['rt_score'],
    );
  }
}
