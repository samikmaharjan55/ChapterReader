import 'package:chapterreader_app/reader_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Chapter Reader APP",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));
var chapterLists = [
  'Ch 1',
  'Ch 2',
  'Ch 3',
  'Ch 4',
  'Ch 5',
  'Ch 6',
  'Ch 7',
  'Ch 8',
  'Ch 9',
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter Reader App'),
        backgroundColor: Color(0xFFB4161B),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
            itemCount: chapterLists.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 2.0,
              mainAxisSpacing: 2.0,
            ),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  if (chapterLists[index] == "Ch 1") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReaderScreen(1)),
                    );
                  } else if (chapterLists[index] == "Ch 2") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReaderScreen(2)),
                    );
                  }
                },
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Icon(
                        Icons.book,
                        size: 40,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        //"Ch" + index.toString(),
                        chapterLists[index],
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
