import 'package:intl/intl.dart';

class PostModel {
  final String? caption;
  final String name;
  final String? userName;
  final String? date;
  final List<String>? media;
  final String avatar;
  final int? reactsCount;
  final int? commentCount;
  final int? shareCount;

  PostModel({
    this.caption,
    required this.name,
    this.userName,
    this.date,
    this.media,
    required this.avatar,
    this.reactsCount,
    this.commentCount,
    this.shareCount,
  });
}
