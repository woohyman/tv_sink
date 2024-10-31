class TvList {
  final int id;
  final String name;
  final String url;

  TvList({
    required this.id,
    required this.name,
    required this.url,
  });

  // Convert a Dog into a Map. The keys must correspond to the names of the
  // columns in the database.
  Map<String, Object?> toMap() {
    return {
      'id': id,
      'name': name,
      'url': url,
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return 'Dog{id: $id, name: $name, url: $url}';
  }
}