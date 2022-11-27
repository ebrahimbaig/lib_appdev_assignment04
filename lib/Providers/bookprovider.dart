import 'package:flutter/material.dart';
import 'package:lib_appdev_assignment/Models/books.dart';
import 'package:lib_appdev_assignment/Reporsitory/bookrepo.dart';

class BooksProvider with ChangeNotifier {
  List<Book> books = [];

  bool isBooksFetching = false;

  final BookRepo _bookRepo = FirebaseBooksRepository();
  // final BookRepo _bookRepo = MockBooksRepository();

  void fetchBooks() async {
    isBooksFetching = true;
    await Future.delayed(
      const Duration(seconds: 1),
    );
    notifyListeners();

    books = await _bookRepo.fetchBookList();
    isBooksFetching = false;
    notifyListeners();
  }

  void addBook(Book book) async {
    await _bookRepo.addBook(book);
    fetchBooks();
  }

  void updateBook(Book book) async {
    await _bookRepo.updateBook(book);
    fetchBooks();
  }

  void deleteBook(Book book) async {
    await _bookRepo.deleteBook(book);
    fetchBooks();
  }

  void markFavorite(Book book) async {
    await _bookRepo.markFavorite(book);
    fetchBooks();
  }

}
