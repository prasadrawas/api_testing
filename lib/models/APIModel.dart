class APIModel {
  APIModel({
    this.id,
    this.businessStatus,
    this.geometrylat,
    this.geometrylng,
    this.openingHours,
    this.icon,
    this.name,
    this.placeId,
    this.website,
    this.timedatators,
    this.opennow,
    this.rating,
    this.phone,
    this.scope,
    this.plusCode,
    this.types,
    this.cookiesId,
    this.cookiesKeyword,
    this.createdAt,
    this.updatedAt,
    this.vicinity,
    this.userRatingsTotal,
    this.geometry,
    this.timetable,
    this.allratings,
    this.allphotos,
    this.photos,
  });

  int id;
  String businessStatus;
  String geometrylat;
  String geometrylng;
  String openingHours;
  String icon;
  String name;
  String placeId;
  dynamic website;
  dynamic timedatators;
  dynamic opennow;
  String rating;
  dynamic phone;
  String scope;
  String plusCode;
  String types;
  dynamic cookiesId;
  dynamic cookiesKeyword;
  dynamic createdAt;
  dynamic updatedAt;
  String vicinity;
  String userRatingsTotal;
  Geometry geometry;
  dynamic timetable;
  dynamic allratings;
  dynamic allphotos;
  List<Photo> photos;

  factory APIModel.fromJson(Map<String, dynamic> json) => APIModel(
        id: json["id"],
        businessStatus: json["business_status"],
        geometrylat: json["geometrylat"],
        geometrylng: json["geometrylng"],
        openingHours: json["opening_hours"],
        icon: json["icon"],
        name: json["name"],
        placeId: json["place_id"],
        website: json["website"],
        timedatators: json["timedatators"],
        opennow: json["opennow"],
        rating: json["rating"],
        phone: json["phone"],
        scope: json["scope"],
        plusCode: json["plus_code"],
        types: json["types"],
        cookiesId: json["cookies_id"],
        cookiesKeyword: json["cookies_keyword"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        vicinity: json["vicinity"],
        userRatingsTotal: json["user_ratings_total"],
        geometry: Geometry.fromJson(json["geometry"]),
        timetable: json["timetable"],
        allratings: json["allratings"],
        allphotos: json["allphotos"],
        photos: List<Photo>.from(json["photos"].map((x) => Photo.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "business_status": businessStatus,
        "geometrylat": geometrylat,
        "geometrylng": geometrylng,
        "opening_hours": openingHours,
        "icon": icon,
        "name": name,
        "place_id": placeId,
        "website": website,
        "timedatators": timedatators,
        "opennow": opennow,
        "rating": rating,
        "phone": phone,
        "scope": scope,
        "plus_code": plusCode,
        "types": types,
        "cookies_id": cookiesId,
        "cookies_keyword": cookiesKeyword,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "vicinity": vicinity,
        "user_ratings_total": userRatingsTotal,
        "geometry": geometry.toJson(),
        "timetable": timetable,
        "allratings": allratings,
        "allphotos": allphotos,
        "photos": List<dynamic>.from(photos.map((x) => x.toJson())),
      };
}

class Geometry {
  Geometry({
    this.location,
    this.viewport,
  });

  Location location;
  Viewport viewport;

  factory Geometry.fromJson(Map<String, dynamic> json) => Geometry(
        location: Location.fromJson(json["location"]),
        viewport: Viewport.fromJson(json["viewport"]),
      );

  Map<String, dynamic> toJson() => {
        "location": location.toJson(),
        "viewport": viewport.toJson(),
      };
}

class Location {
  Location({
    this.lat,
    this.lng,
  });

  double lat;
  double lng;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        lat: json["lat"].toDouble(),
        lng: json["lng"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "lat": lat,
        "lng": lng,
      };
}

class Viewport {
  Viewport({
    this.northeast,
    this.southwest,
  });

  Location northeast;
  Location southwest;

  factory Viewport.fromJson(Map<String, dynamic> json) => Viewport(
        northeast: Location.fromJson(json["northeast"]),
        southwest: Location.fromJson(json["southwest"]),
      );

  Map<String, dynamic> toJson() => {
        "northeast": northeast.toJson(),
        "southwest": southwest.toJson(),
      };
}

class Photo {
  Photo({
    this.height,
    this.htmlAttributions,
    this.photoReference,
    this.width,
  });

  int height;
  List<String> htmlAttributions;
  String photoReference;
  int width;

  factory Photo.fromJson(Map<String, dynamic> json) => Photo(
        height: json["height"],
        htmlAttributions:
            List<String>.from(json["html_attributions"].map((x) => x)),
        photoReference: json["photo_reference"],
        width: json["width"],
      );

  Map<String, dynamic> toJson() => {
        "height": height,
        "html_attributions": List<dynamic>.from(htmlAttributions.map((x) => x)),
        "photo_reference": photoReference,
        "width": width,
      };
}
