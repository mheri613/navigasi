import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class StaticBooks {
  static const String cdn = "https://cdn.syncfusion.com/";
  static const String path = "content/images/downloads/ebook/ebook-cover/";
  static const List<String> covers = [
    "visual-studio-for-mac-succinctly-v1.png",
    "angular-testing-succinctly.png",
    "azure-devops-succinctly.png",
    "asp-net-core-3-1-succinctly.png",
    "angulardart_succinctly.png"
  ];
  static const List<String> titles = [
    "Visual Studio for Mac Succinctly",
    "Angular Testing Succinctly",
    "Azure DevOps Succinctly",
    "ASP.NET Core 3.1 Succinctly",
    "AngularDart Succinctly"
  ];
}

class Succinctly extends StatelessWidget {
  final String book;
  final String title;
  Succinctly({
    required this.book,
    required this.title,
  });
  PopupMenuItem<String> bookItem(item) {
    return PopupMenuItem<String>(
      child: Text(item),
      value: item,
    );
  }

  List<PopupMenuItem<String>> listBooks() {
    return StaticBooks.titles.map((String item) {
      return bookItem(item);
    }).toList();
  }

  List<Widget> popupMenuButton() {
    return <Widget>[
      PopupMenuButton<String>(
        icon: Icon(Icons.book),
        itemBuilder: (BuildContext context) {
          return listBooks();
        },
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: popupMenuButton(),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(StaticBooks.cdn + StaticBooks.path + book),
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.book_online),
        onPressed: () {
          print('Awesome book!');
        },
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Succinctly(
        book: StaticBooks.covers[0],
        title: StaticBooks.titles[0],
      ),
      theme: ThemeData(
        primaryColor: Colors.indigo,
        hintColor: Colors.amber,
        textTheme: TextTheme(
          bodyText2: TextStyle(fontSize: 26, fontStyle: FontStyle.italic),
        ),
        brightness: Brightness.dark,
      ),
    );
  }
}
