class Book {
  String bookName;
  List<String> authors;
  String publisherName;
  String? isbnNumber;
  String bookImageURL;
  bool isfavorite;

  Book(
      {required this.bookName,
      required this.authors,
      required this.publisherName,
      required this.bookImageURL,
      required String isbnNumber,
      required this.isfavorite});

  static Book fromJson(Map<String, dynamic> json, String id) => Book(
        bookName: json['first'] as String? ?? '',
        authors: json['authors'] as List<String>? ?? [],
        publisherName: json['publisherName'] as String? ?? '',
        bookImageURL: json['bookImageURL'] as String? ?? '',
        isbnNumber: id,
        isfavorite: ['isFav'] as bool? ?? false,
      );
}
