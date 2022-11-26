import 'package:flutter/material.dart';
import 'package:lib_appdev_assignment/UI/Widgets/favouriteicon.dart';

class bookCard extends StatefulWidget {
  const bookCard(
      {super.key,
      required this.bookName,
      required this.authors,
      required this.isFav,
      required this.bookImageURL});

  final String bookName;
  final List<String> authors;
  final bool isFav;
  final String bookImageURL;

  @override
  State<bookCard> createState() => _bookCardState();
}

class _bookCardState extends State<bookCard> {
  var concatenate = StringBuffer();
  bool fav = false;
  @override
  void initState() {
    bool fav = widget.isFav;
    // TODO: implement initState
    widget.authors.forEach((item) {
      concatenate.write(item + ' ');
      print(concatenate);
      print(widget.bookName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 132,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(66, 56, 56, 56).withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 30,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      image: DecorationImage(
                          image: NetworkImage(widget.bookImageURL),
                          fit: BoxFit.fill)),
                ),
                const SizedBox(
                  width: 32,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.bookName,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          concatenate.toString(),
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            isfavIcon(
                onTap: () {
                  setState(
                    () {
                      fav = !fav;
                    },
                  );
                },
                color: fav)
          ],
        ),
      ),
    );
  }
}
