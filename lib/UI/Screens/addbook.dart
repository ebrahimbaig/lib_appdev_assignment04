import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Models/books.dart';
import '../../Providers/bookprovider.dart';
import '../Widgets/textfield.dart';

class AddBook extends StatefulWidget {
  const AddBook({Key? key}) : super(key: key);

  @override
  _AddBookState createState() => _AddBookState();
}

class _AddBookState extends State<AddBook> {
  final _formKey = GlobalKey<FormState>();
  var name = '';
  var publisherName = '';
  var authors = '';
  var imageURl = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Book'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomTextField(
                  label: 'Book Name',
                  text: (text) {
                    name = text;
                  },
                ),
                CustomTextField(
                  label: 'Authors',
                  hint: 'Add authors separated by comma (,)',
                  text: (text) {
                    authors = text;
                  },
                ),
                CustomTextField(
                  label: 'Publisher Name',
                  text: (text) {
                    publisherName = text;
                  },
                ),
                CustomTextField(
                  label: 'Image URL',
                  text: (text) {
                    imageURl = text;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Book book = Book(
                          bookName: name,
                          authors: authors.replaceAll(' ', '').split(','),
                          publisherName: publisherName,
                          bookImageURL: imageURl,
                          isfavorite: false,
                        );
                        context.read<BooksProvider>().addBook(book);
                        Navigator.of(context).pop();
                      }
                    },
                    child: const Text('Add Book'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
