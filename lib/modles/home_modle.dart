
class MovieRating {
  String stars;
  int max;
  int min;
  double average;

  MovieRating.fromMap(Map<String, dynamic> json) {
    this.stars = json["stars"];
    this.max = json["max"];
    this.min = json["min"];
    this.average = json["average"];
  }

}


class MovieAvatar {
  String small;
  String large;
  String medium;

  MovieAvatar.fromMap(Map<String, dynamic> json) {
    this.small = json["small"];
    this.large = json["large"];
    this.medium = json["medium"];
  }
}

class MovieCast {
  String id;
  String alt;
  String name;
  String name_en;
  MovieAvatar avatars;

  MovieCast.fromMap(Map<String, dynamic> json) {
    this.name = json["name"];
    this.id = json["id"];
    this.alt = json["alt"];
    this.name_en = json["name_en"];
    this.avatars = MovieAvatar.fromMap(json["avatars"]);
  }
}

class MovieItem {
  int rateNum;
  String title;
  String id;
  String alt;
  String year;
  String subtype;
  String original_title;

  String mainland_pubdate;
  int collect_count;
  bool has_video;
  MovieAvatar images;
  MovieRating rating;

  List<dynamic> genres;
  List<dynamic> durations;
  List<dynamic> pubdates;

  List<MovieCast> casts;
  List<MovieCast> directors;


  MovieItem.fromMap(Map<String, dynamic> json) {
    this.title = json["title"];
    this.id = json["id"];
    this.alt = json["alt"];
    this.year = json["year"];
    this.subtype = json["subtype"];
    this.original_title = json["original_title"];

    this.mainland_pubdate = json["mainland_pubdate"];
    this.collect_count = json["collect_count"];
    this.has_video = json["has_video"];
    this.images = MovieAvatar.fromMap(json["images"]);
    this.rating = MovieRating.fromMap(json["rating"]);

    this.genres = json["genres"];
    this.durations = json["durations"];
    this.pubdates = json["pubdates"];

    this.casts = [];
    List castList = json["casts"];
    for (int i = 0; i< castList.length; i++) {
      this.casts.add(MovieCast.fromMap(castList[i]));
    }

    this.directors = [];
    List directorList = json["directors"];
    for (int i = 0; i< castList.length; i++) {
      this.directors.add(MovieCast.fromMap(castList[i]));
    }
  }
}

