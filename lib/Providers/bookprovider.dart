import 'package:flutter/material.dart';
import 'package:lib_appdev_assignment/Models/books.dart';
import 'package:lib_appdev_assignment/Reporsitory/bookrepo.dart';

class BooksProvider with ChangeNotifier {
  List<Book> books = [];

  bool isBooksFetching = false;

  // final BookRepo _BookRepo = FirebaseBooksRepository();
  final BookRepo _BookRepo = MockBooksRepository();

  void fetchBooks() async {
    isBooksFetching = true;
    // notifyListeners();
    books = await _BookRepo.fetchBookList();
    isBooksFetching = false;
    notifyListeners();
  }
}
