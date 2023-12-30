// To parse this JSON data, do
//
//     final homeFeedModel = homeFeedModelFromJson(jsonString);

import 'dart:convert';

HomeFeedModel homeFeedModelFromJson(String str) =>
    HomeFeedModel.fromJson(json.decode(str));

String homeFeedModelToJson(HomeFeedModel data) => json.encode(data.toJson());

class HomeFeedModel {
  dynamic skip;
  int? count;
  dynamic totalCount;
  dynamic sortBy;
  dynamic sortType;
  List<Item>? item;
  dynamic next;

  HomeFeedModel({
    this.skip,
    this.count,
    this.totalCount,
    this.sortBy,
    this.sortType,
    this.item,
    this.next,
  });

  factory HomeFeedModel.fromJson(Map<String, dynamic> json) => HomeFeedModel(
        skip: json["skip"],
        count: json["count"],
        totalCount: json["totalCount"],
        sortBy: json["sortBy"],
        sortType: json["sortType"],
        item: json["item"] == null
            ? []
            : List<Item>.from(json["item"]!.map((x) => Item.fromJson(x))),
        next: json["next"],
      );

  Map<String, dynamic> toJson() => {
        "skip": skip,
        "count": count,
        "totalCount": totalCount,
        "sortBy": sortBy,
        "sortType": sortType,
        "item": item == null
            ? []
            : List<dynamic>.from(item!.map((x) => x.toJson())),
        "next": next,
      };
}

class Item {
  String? id;
  dynamic createdBy;
  int? createdAt;
  dynamic modifiedBy;
  dynamic modifiedAt;
  dynamic isDeleted;
  Actor? actor;
  String? verb;
  Actor? object;
  String? foreignId;
  Actor? target;
  dynamic origin;
  String? message;
  List<Actor>? mentions;
  List<String>? tags;
  List<MediaUrl>? mediaUrls;
  String? linkName;
  String? linkUrl;
  LocationDetails? locationDetails;
  Extra? extra;
  Reactions? ownReactions;
  Reactions? latestReactions;
  ReactionCounts? reactionCounts;
  int? score;

  Item({
    this.id,
    this.createdBy,
    this.createdAt,
    this.modifiedBy,
    this.modifiedAt,
    this.isDeleted,
    this.actor,
    this.verb,
    this.object,
    this.foreignId,
    this.target,
    this.origin,
    this.message,
    this.mentions,
    this.tags,
    this.mediaUrls,
    this.linkName,
    this.linkUrl,
    this.locationDetails,
    this.extra,
    this.ownReactions,
    this.latestReactions,
    this.reactionCounts,
    this.score,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        createdBy: json["createdBy"],
        createdAt: json["createdAt"],
        modifiedBy: json["modifiedBy"],
        modifiedAt: json["modifiedAt"],
        isDeleted: json["isDeleted"],
        actor: json["actor"] == null ? null : Actor.fromJson(json["actor"]),
        verb: json["verb"],
        object: json["object"] == null ? null : Actor.fromJson(json["object"]),
        foreignId: json["foreignID"],
        target: json["target"] == null ? null : Actor.fromJson(json["target"]),
        origin: json["origin"],
        message: json["message"],
        mentions: json["mentions"] == null
            ? []
            : List<Actor>.from(json["mentions"]!.map((x) => Actor.fromJson(x))),
        tags: json["tags"] == null
            ? []
            : List<String>.from(json["tags"]!.map((x) => x)),
        mediaUrls: json["mediaUrls"] == null
            ? []
            : List<MediaUrl>.from(
                json["mediaUrls"]!.map((x) => MediaUrl.fromJson(x))),
        linkName: json["linkName"],
        linkUrl: json["linkUrl"],
        locationDetails: json["locationDetails"] == null
            ? null
            : LocationDetails.fromJson(json["locationDetails"]),
        extra: json["extra"] == null ? null : Extra.fromJson(json["extra"]),
        ownReactions: json["ownReactions"] == null
            ? null
            : Reactions.fromJson(json["ownReactions"]),
        latestReactions: json["latestReactions"] == null
            ? null
            : Reactions.fromJson(json["latestReactions"]),
        reactionCounts: json["reactionCounts"] == null
            ? null
            : ReactionCounts.fromJson(json["reactionCounts"]),
        score: json["score"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "createdBy": createdBy,
        "createdAt": createdAt,
        "modifiedBy": modifiedBy,
        "modifiedAt": modifiedAt,
        "isDeleted": isDeleted,
        "actor": actor?.toJson(),
        "verb": verb,
        "object": object?.toJson(),
        "foreignID": foreignId,
        "target": target?.toJson(),
        "origin": origin,
        "message": message,
        "mentions": mentions == null
            ? []
            : List<dynamic>.from(mentions!.map((x) => x.toJson())),
        "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
        "mediaUrls": mediaUrls == null
            ? []
            : List<dynamic>.from(mediaUrls!.map((x) => x.toJson())),
        "linkName": linkName,
        "linkUrl": linkUrl,
        "locationDetails": locationDetails?.toJson(),
        "extra": extra?.toJson(),
        "ownReactions": ownReactions?.toJson(),
        "latestReactions": latestReactions?.toJson(),
        "reactionCounts": reactionCounts?.toJson(),
        "score": score,
      };
}

class Actor {
  String? id;
  Data? data;

  Actor({
    this.id,
    this.data,
  });

  factory Actor.fromJson(Map<String, dynamic> json) => Actor(
        id: json["id"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "data": data?.toJson(),
      };
}

class Data {
  Data();

  factory Data.fromJson(Map<String, dynamic> json) => Data();

  Map<String, dynamic> toJson() => {};
}

class Extra {
  String? theme;

  Extra({
    this.theme,
  });

  factory Extra.fromJson(Map<String, dynamic> json) => Extra(
        theme: json["Theme"],
      );

  Map<String, dynamic> toJson() => {
        "Theme": theme,
      };
}

class Reactions {
  List<Comment>? comment;

  Reactions({
    this.comment,
  });

  factory Reactions.fromJson(Map<String, dynamic> json) => Reactions(
        comment: json["COMMENT"] == null
            ? []
            : List<Comment>.from(
                json["COMMENT"]!.map((x) => Comment.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "COMMENT": comment == null
            ? []
            : List<dynamic>.from(comment!.map((x) => x.toJson())),
      };
}

class Comment {
  String? id;
  Kind? kind;
  String? parent;
  String? userId;
  String? activityId;
  List<TargetFeed>? targetFeeds;
  DateTime? updatedAt;
  DateTime? createdAt;

  Comment({
    this.id,
    this.kind,
    this.parent,
    this.userId,
    this.activityId,
    this.targetFeeds,
    this.updatedAt,
    this.createdAt,
  });

  factory Comment.fromJson(Map<String, dynamic> json) => Comment(
        id: json["id"],
        kind: kindValues.map[json["kind"]]!,
        parent: json["parent"],
        userId: json["user_id"],
        activityId: json["activity_id"],
        targetFeeds: json["target_feeds"] == null
            ? []
            : List<TargetFeed>.from(
                json["target_feeds"]!.map((x) => targetFeedValues.map[x]!)),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "kind": kindValues.reverse[kind],
        "parent": parent,
        "user_id": userId,
        "activity_id": activityId,
        "target_feeds": targetFeeds == null
            ? []
            : List<dynamic>.from(
                targetFeeds!.map((x) => targetFeedValues.reverse[x])),
        "updated_at": updatedAt?.toIso8601String(),
        "created_at": createdAt?.toIso8601String(),
      };
}

enum Kind { COMMENT }

final kindValues = EnumValues({"COMMENT": Kind.COMMENT});

enum TargetFeed {
  NOTIFICATION_35_F780_E1_105_B_454885416833485_A302_A,
  NOTIFICATION_88_F50775_587_E_47_A1_9_BB7_88_D01308_E411
}

final targetFeedValues = EnumValues({
  "notification:35f780e1-105b-4548-8541-6833485a302a":
      TargetFeed.NOTIFICATION_35_F780_E1_105_B_454885416833485_A302_A,
  "notification:88f50775-587e-47a1-9bb7-88d01308e411":
      TargetFeed.NOTIFICATION_88_F50775_587_E_47_A1_9_BB7_88_D01308_E411
});

class LocationDetails {
  String? lang;
  String? lat;

  LocationDetails({
    this.lang,
    this.lat,
  });

  factory LocationDetails.fromJson(Map<String, dynamic> json) =>
      LocationDetails(
        lang: json["lang"],
        lat: json["lat"],
      );

  Map<String, dynamic> toJson() => {
        "lang": lang,
        "lat": lat,
      };
}

class MediaUrl {
  MediaType? mediaType;
  String? mediaUrl;

  MediaUrl({
    this.mediaType,
    this.mediaUrl,
  });

  factory MediaUrl.fromJson(Map<String, dynamic> json) => MediaUrl(
        mediaType: mediaTypeValues.map[json["mediaType"]]!,
        mediaUrl: json["mediaUrl"],
      );

  Map<String, dynamic> toJson() => {
        "mediaType": mediaTypeValues.reverse[mediaType],
        "mediaUrl": mediaUrl,
      };
}

enum MediaType { IMAGE, VIDEO }

final mediaTypeValues =
    EnumValues({"image": MediaType.IMAGE, "video": MediaType.VIDEO});

class ReactionCounts {
  int? comment;

  ReactionCounts({
    this.comment,
  });

  factory ReactionCounts.fromJson(Map<String, dynamic> json) => ReactionCounts(
        comment: json["COMMENT"],
      );

  Map<String, dynamic> toJson() => {
        "COMMENT": comment,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
