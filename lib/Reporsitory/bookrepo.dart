import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lib_appdev_assignment/Models/books.dart';

abstract class BookRepo {
  Future<List<Book>> fetchBookList();
}

class FirebaseBooksRepository implements BookRepo {
  final db = FirebaseFirestore.instance;

  @override
  Future<List<Book>> fetchBookList() async {
    List<Book> books = [];
    await db.collection("users").get().then((event) {
      books = event.docs.map((e) => Book.fromJson(e.data(), e.id)).toList();
    });

    return books;
  }
}

class MockBooksRepository implements BookRepo {
  final db = FirebaseFirestore.instance;

  @override
  Future<List<Book>> fetchBookList() async {
    List<Book> books = [
      Book(
        bookName: 'Book Name 5',
        authors: ['author1', 'author2'],
        publisherName: 'Publisher Name',
        bookImageURL:
            'https://miro.medium.com/focal/70/70/50/50/1*L6gfDRU9iPXpWx978BzcOw.png',
        isbnNumber: '1234',
        isfavorite: false,
      ),
      Book(
        bookName: 'Book Name 5',
        authors: ['author1', 'author2'],
        publisherName: 'Publisher Name',
        bookImageURL:
            'https://miro.medium.com/focal/70/70/50/50/1*L6gfDRU9iPXpWx978BzcOw.png',
        isbnNumber: '1234',
        isfavorite: false,
      ),
      Book(
        bookName: 'Book Name 5',
        authors: ['author1', 'author2'],
        publisherName: 'Publisher Name',
        bookImageURL:
            'https://miro.medium.com/focal/70/70/50/50/1*L6gfDRU9iPXpWx978BzcOw.png',
        isbnNumber: '1234',
        isfavorite: false,
      ),
      Book(
        bookName: 'Book Name 5',
        authors: ['author1', 'author2'],
        publisherName: 'Publisher Name',
        bookImageURL:
            'https://miro.medium.com/focal/70/70/50/50/1*L6gfDRU9iPXpWx978BzcOw.png',
        isbnNumber: '1234',
        isfavorite: false,
      ),
      Book(
        bookName: 'Book Name 5',
        authors: ['author1', 'author2'],
        publisherName: 'Publisher Name',
        bookImageURL:
            'https://miro.medium.com/focal/70/70/50/50/1*L6gfDRU9iPXpWx978BzcOw.png',
        isbnNumber: '1234',
        isfavorite: false,
      ),
      Book(
        bookName: 'Book Name 5',
        authors: ['author1', 'author2'],
        publisherName: 'Publisher Name',
        bookImageURL:
            'https://miro.medium.com/focal/70/70/50/50/1*L6gfDRU9iPXpWx978BzcOw.png',
        isbnNumber: '1234',
        isfavorite: false,
      ),
      Book(
        bookName: 'Book Name 5',
        authors: ['author1', 'author2'],
        publisherName: 'Publisher Name',
        bookImageURL:
            'https://miro.medium.com/focal/70/70/50/50/1*L6gfDRU9iPXpWx978BzcOw.png',
        isbnNumber: '1234',
        isfavorite: false,
      ),
      Book(
        bookName: 'Book Name 5',
        authors: ['author1', 'author2'],
        publisherName: 'Publisher Name',
        bookImageURL:
            'https://miro.medium.com/focal/70/70/50/50/1*L6gfDRU9iPXpWx978BzcOw.png',
        isbnNumber: '1234',
        isfavorite: false,
      ),
      Book(
        bookName: 'Book Name 5',
        authors: ['author1', 'author2'],
        publisherName: 'Publisher Name',
        bookImageURL:
            'https://miro.medium.com/focal/70/70/50/50/1*L6gfDRU9iPXpWx978BzcOw.png',
        isbnNumber: '1234',
        isfavorite: false,
      ),
      Book(
        bookName: 'Book Name 5',
        authors: ['author1', 'author2'],
        publisherName: 'Publisher Name',
        bookImageURL:
            'https://miro.medium.com/focal/70/70/50/50/1*L6gfDRU9iPXpWx978BzcOw.png',
        isbnNumber: '1234',
        isfavorite: false,
      ),
    ];
    return books;
  }
}
