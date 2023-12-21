//-FIXME: In programming, "parsing" refers to analyzing a text string to extract structured information. This process is crucial for converting data in a specific format (such as JSON) into a structure that the program can comprehend and manipulate.
import 'dart:async';
import 'dart:io';

void main() {
  final file = File('files/books.csv');
  final filterFile = File('files/filter_file.txt');

  String unCompletedLine = '';
  bool firstRead = true;
  file.openRead().transform(StreamTransformer.fromHandlers(
    handleData: (data, sink) {
      String str = String.fromCharCodes(data);

      if (unCompletedLine.isNotEmpty) {
        str = unCompletedLine + str;
        unCompletedLine = '';
      }

      final lines = str.split('\n');
      if (firstRead) {
        lines.removeAt(0);
        firstRead = false;
      }
      List<Book> books = [];

      for (final line in lines) {
        try {
          final book = Book.fromLine(line.split(','));
          books.add(book);
        } catch (_) {
          unCompletedLine = line;
        }
      }

      String author = 'Tolkien';
      books.removeWhere((element) =>
          element.authors.toLowerCase().contains(author.toLowerCase()));
    },
  ));
}

class Book {
  final String bookID;
  final String title;
  final String authors;
  final num averageRating;
  final String isbn;
  final String isbn13;
  final String languageCode;
  final int numPages;
  final int ratingsCount;
  final int textReviewsCount;
  final String publicationDate;
  final String publisher;

  const Book({
    required this.bookID,
    required this.title,
    required this.authors,
    required this.averageRating,
    required this.isbn,
    required this.isbn13,
    required this.languageCode,
    required this.numPages,
    required this.ratingsCount,
    required this.textReviewsCount,
    required this.publicationDate,
    required this.publisher,
  });

  factory Book.fromLine(List<String> list) {
    return Book(
      bookID: list.first,
      title: list[1],
      authors: list[2],
      averageRating: num.tryParse(list[3]) ?? 0.0,
      isbn: list[4],
      isbn13: list[5],
      languageCode: list[6],
      numPages: int.tryParse(list[7]) ?? 0,
      ratingsCount: int.tryParse(list[8]) ?? 0,
      textReviewsCount: int.tryParse(list[9]) ?? 0,
      publicationDate: list[10],
      publisher: list[11],
    );
  }

  @override
  String toString() {
    return 'BookId: $bookID, title: $title, authors: $authors, averageRating $averageRating, isbn: $isbn, isbn13: $isbn13, languageCode: $languageCode, numPages: $numPages, ratingCount: $ratingsCount, textReviewCount: $textReviewsCount, publicationDate: $publicationDate, publisher: $publisher\n';
  }
}
