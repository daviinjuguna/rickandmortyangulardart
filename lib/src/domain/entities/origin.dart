import 'package:meta/meta.dart';

class Origin {
  final String name, url;
  Origin({
    @required this.name,
    @required this.url,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Origin && other.name == name && other.url == url;
  }

  @override
  int get hashCode => name.hashCode ^ url.hashCode;

  Origin copyWith({
    String name,
    String url,
  }) {
    return Origin(
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }

  @override
  String toString() => 'Origin(name: $name, url: $url)';
}
