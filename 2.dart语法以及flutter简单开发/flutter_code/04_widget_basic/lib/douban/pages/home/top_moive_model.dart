class DBTopMoiveModel {
    int count;
    int start;
    List<Subject> subjects;
    int total;

    DBTopMoiveModel({this.count, this.start, this.subjects, this.total});

    factory DBTopMoiveModel.fromJson(Map<String, dynamic> json) {
        return DBTopMoiveModel(
            count: json['count'], 
            start: json['start'], 
            subjects: json['subjects'] != null ? (json['subjects'] as List).map((i) => Subject.fromJson(i)).toList() : null, 
            total: json['total'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['count'] = this.count;
        data['start'] = this.start;
        data['total'] = this.total;
        if (this.subjects != null) {
            data['subjects'] = this.subjects.map((v) => v.toJson()).toList();
        }
        return data;
    }
}

class Subject {
    List<Cast> casts;
    int comments_count;
    List<String> countries;
    List<Director> directors;
    List<String> genres;
    int id;
    Images images;
    String original_title;
    Rating rating;
    int reviews_count;
    String summary;
    String title;
    String warning;
    int wish_count;
    int year;

    Subject({this.casts, this.comments_count, this.countries, this.directors, this.genres, this.id, this.images, this.original_title, this.rating, this.reviews_count, this.summary, this.title, this.warning, this.wish_count, this.year});

    factory Subject.fromJson(Map<String, dynamic> json) {
        return Subject(
            casts: json['casts'] != null ? (json['casts'] as List).map((i) => Cast.fromJson(i)).toList() : null, 
            comments_count: json['comments_count'], 
            countries: json['countries'] != null ? new List<String>.from(json['countries']) : null, 
            directors: json['directors'] != null ? (json['directors'] as List).map((i) => Director.fromJson(i)).toList() : null, 
            genres: json['genres'] != null ? new List<String>.from(json['genres']) : null, 
            id: json['id'], 
            images: json['images'] != null ? Images.fromJson(json['images']) : null, 
            original_title: json['original_title'], 
            rating: json['rating'] != null ? Rating.fromJson(json['rating']) : null, 
            reviews_count: json['reviews_count'], 
            summary: json['summary'], 
            title: json['title'], 
            warning: json['warning'], 
            wish_count: json['wish_count'], 
            year: json['year'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['comments_count'] = this.comments_count;
        data['id'] = this.id;
        data['original_title'] = this.original_title;
        data['reviews_count'] = this.reviews_count;
        data['summary'] = this.summary;
        data['title'] = this.title;
        data['warning'] = this.warning;
        data['wish_count'] = this.wish_count;
        data['year'] = this.year;
        if (this.casts != null) {
            data['casts'] = this.casts.map((v) => v.toJson()).toList();
        }
        if (this.countries != null) {
            data['countries'] = this.countries;
        }
        if (this.directors != null) {
            data['directors'] = this.directors.map((v) => v.toJson()).toList();
        }
        if (this.genres != null) {
            data['genres'] = this.genres;
        }
        if (this.images != null) {
            data['images'] = this.images.toJson();
        }
        if (this.rating != null) {
            data['rating'] = this.rating.toJson();
        }
        return data;
    }
}

class Director {
    AvatarsX avatars;
    String name;

    Director({this.avatars, this.name});

    factory Director.fromJson(Map<String, dynamic> json) {
        return Director(
            avatars: json['avatars'] != null ? AvatarsX.fromJson(json['avatars']) : null, 
            name: json['name'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['name'] = this.name;
        if (this.avatars != null) {
            data['avatars'] = this.avatars.toJson();
        }
        return data;
    }
}

class Avatars {
    String large;

    Avatars({this.large});

    factory Avatars.fromJson(Map<String, dynamic> json) {
        return Avatars(
            large: json['large'] != null ? json['large'] : null,
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        if (this.large != null) {
            data['large'] = this.large;
        }
        return data;
    }
}

class Images {
    String large;

    Images({this.large});

    factory Images.fromJson(Map<String, dynamic> json) {
        return Images(
            large: json['large'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['large'] = this.large;
        return data;
    }
}

class Rating {
    double average;
    int max;
    int min;
    String stars;

    Rating({this.average, this.max, this.min, this.stars});

    factory Rating.fromJson(Map<String, dynamic> json) {
        return Rating(
            average: json['average'], 
            max: json['max'], 
            min: json['min'], 
            stars: json['stars'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['average'] = this.average;
        data['max'] = this.max;
        data['min'] = this.min;
        data['stars'] = this.stars;
        return data;
    }
}

class Cast {
    Avatars avatars;
    String name;

    Cast({this.avatars, this.name});

    factory Cast.fromJson(Map<String, dynamic> json) {
        return Cast(
            avatars: json['avatars'] != null ? Avatars.fromJson(json['avatars']) : null, 
            name: json['name'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['name'] = this.name;
        if (this.avatars != null) {
            data['avatars'] = this.avatars.toJson();
        }
        return data;
    }
}

class AvatarsX {
    String large;

    AvatarsX({this.large});

    factory AvatarsX.fromJson(Map<String, dynamic> json) {
        return AvatarsX(
            large: json['large'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['large'] = this.large;
        return data;
    }
}