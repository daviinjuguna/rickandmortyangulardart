import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:rickandmortyangulardart/src/domain/entities/origin.dart';

part 'origin_model.g.dart';

@JsonSerializable()
class OriginModel extends Origin {
  @override
  @override
  final String name, url;

  OriginModel({@required this.name, @required this.url})
      : super(name: name, url: url);

  factory OriginModel.fromJson(Map<String, dynamic> json) =>
      _$OriginModelFromJson(json);

  Map<String, dynamic> toJson() => _$OriginModelToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is OriginModel && other.url == url;
  }

  @override
  int get hashCode => url.hashCode;
}
