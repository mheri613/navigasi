//Succinctly books app###
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
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
          bodyText2: TextStyle(
            fontSize: 26,
            fontStyle: FontStyle.italic,
          ),
        ),
        brightness: Brightness.dark,
      ),
    );
  }
}


// 
// //PopupMenuButton
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class StaticBooks {
//   static const String cdn = "https://cdn.syncfusion.com/";
//   static const String path = "content/images/downloads/ebook/ebook-cover/";
//   static const List<String> covers = [
//     "visual-studio-for-mac-succinctly-v1.png",
//     "angular-testing-succinctly.png",
//     "azure-devops-succinctly.png",
//     "asp-net-core-3-1-succinctly.png",
//     "angulardart_succinctly.png"
//   ];
//   static const List<String> titles = [
//     "Visual Studio for Mac Succinctly",
//     "Angular Testing Succinctly",
//     "Azure DevOps Succinctly",
//     "ASP.NET Core 3.1 Succinctly",
//     "AngularDart Succinctly"
//   ];
// }

// class Succinctly extends StatelessWidget {
//   final String book;
//   final String title;
//   Succinctly({
//     required this.book,
//     required this.title,
//   });
//   PopupMenuItem<String> bookItem(item) {
//     return PopupMenuItem<String>(
//       child: Text(item),
//       value: item,
//     );
//   }

//   List<PopupMenuEntry<String>> listBooks() {
//     return StaticBooks.titles.map((String item) {
//       return PopupMenuItem<String>(
//         child: Text(item),
//         value: item,
//       );
//     }).toList();
//   }

//   List<Widget> popupMenuButton() {
//     return <Widget>[
//       PopupMenuButton<String>(
//         icon: Icon(Icons.book),
//         itemBuilder: (BuildContext context) {
//           return listBooks();
//         },
//       ),
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//         actions: popupMenuButton(),
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: NetworkImage(StaticBooks.cdn + StaticBooks.path + book),
//             fit: BoxFit.scaleDown,
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.book_online),
//         onPressed: () {
//           print('Awesome book!');
//         },
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Succinctly(
//         book: StaticBooks.covers[0],
//         title: StaticBooks.titles[0],
//       ),
//       theme: ThemeData(
//         primaryColor: Colors.indigo,
//         hintColor: Colors.amber,
//         textTheme: TextTheme(
//           bodyText2: TextStyle(fontSize: 26, fontStyle: FontStyle.italic),
//         ),
//         brightness: Brightness.dark,
//       ),
//     );
//   }
// }







//Push and pop##
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class StaticBooks {
//   static const String cdn = "https://cdn.syncfusion.com/";
//   static const String path = "content/images/downloads/ebook/ebook-cover/";
//   static const List<String> covers = [
//     "visual-studio-for-mac-succinctly-v1.png",
//     "angular-testing-succinctly.png",
//     "azure-devops-succinctly.png",
//     "asp-net-core-3-1-succinctly.png",
//     "angulardart_succinctly.png"
//   ];
//   static const List<String> titles = [
//     "Visual Studio for Mac Succinctly",
//     "Angular Testing Succinctly",
//     "Azure DevOps Succinctly",
//     "ASP.NET Core 3.1 Succinctly",
//     "AngularDart Succinctly"
//   ];
// }

// class Succinctly extends StatelessWidget {
//   final String book;
//   final String title;
//   Succinctly({
//     required this.book,
//     required this.title,
//   });
//   PopupMenuItem<String> bookItem(item) {
//     return PopupMenuItem<String>(
//       child: Text(item),
//       value: item,
//     );
//   }

//   List<PopupMenuItem<String>> listBooks() {
//     return StaticBooks.titles.map((String item) {
//       return bookItem(item);
//     }).toList();
//   }

//   List<Widget> popupMenuButton(BuildContext context) {
//     return <Widget>[
//       PopupMenuButton<String>(
//         icon: Icon(Icons.book),
//         itemBuilder: (context) {
//           return listBooks();
//         },
//         onSelected: (value) => showBook(context, value),
//       ),
//     ];
//   }

//   void showBook(BuildContext context, String item) {
//     final Map<String, String> bookData = {
//       StaticBooks.titles[0]: StaticBooks.covers[0],
//       StaticBooks.titles[1]: StaticBooks.covers[1],
//       StaticBooks.titles[2]: StaticBooks.covers[2],
//       StaticBooks.titles[3]: StaticBooks.covers[3],
//       StaticBooks.titles[4]: StaticBooks.covers[4],
//     };

//     final String title = item;
//     final String cover = item;

//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => Succinctly(
//           book: cover,
//           title: title,
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//         actions: popupMenuButton(context),
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: NetworkImage(StaticBooks.cdn + StaticBooks.path + book),
//             fit: BoxFit.scaleDown,
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.book_online),
//         onPressed: () {
//           print('Awesome book!');
//         },
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Succinctly(
//         book: StaticBooks.covers[0],
//         title: StaticBooks.titles[0],
//       ),
//       theme: ThemeData(
//         primaryColor: Color(0xff1c35c2),
//         hintColor: Colors.amber,
//         textTheme: TextTheme(
//           bodyText2: TextStyle(fontSize: 26, fontStyle: FontStyle.italic),
//         ),
//         brightness: Brightness.dark,
//       ),
//     );
//   }
// }







//Bottom navigation bar###
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class StaticBooks {
//   static const String cdn = "https://cdn.syncfusion.com/";
//   static const String path = "content/images/downloads/ebook/ebook-cover/";
//   static const List<String> covers = [
//     "visual-studio-for-mac-succinctly-v1.png",
//     "angular-testing-succinctly.png",
//     "azure-devops-succinctly.png",
//     "asp-net-core-3-1-succinctly.png",
//     "angulardart_succinctly.png"
//   ];
//   static const List<String> titles = [
//     "Visual Studio for Mac Succinctly",
//     "Angular Testing Succinctly",
//     "Azure DevOps Succinctly",
//     "ASP.NET Core 3.1 Succinctly",
//     "AngularDart Succinctly"
//   ];
// }

// class Succinctly extends StatelessWidget {
//   final String book;
//   final String title;
//   Succinctly({
//     required this.book,
//     required this.title,
//   });

//   void showBook(BuildContext context, String selectedTitle) {
//     String selectedCover =
//         StaticBooks.covers[StaticBooks.titles.indexOf(selectedTitle)];
//     Navigator.push(
//         context,
//         MaterialPageRoute(
//             builder: (context) => Succinctly(
//                   book: selectedCover,
//                   title: selectedTitle,
//                 )));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         selectedItemColor: Colors.orange,
//         currentIndex: StaticBooks.titles.indexOf(title),
//         onTap: (value) {
//           String selectedTitle = StaticBooks.titles[value];
//           showBook(context, selectedTitle);
//         },
//         items: [
//           BottomNavigationBarItem(
//             label: 'Visual Studio Mac',
//             icon: Icon(Icons.book),
//           ),
//           BottomNavigationBarItem(
//             label: 'Ang. Testing',
//             icon: Icon(Icons.book_online),
//           ),
//           BottomNavigationBarItem(
//             label: 'Azure DevOps',
//             icon: Icon(Icons.book_online_outlined),
//           ),
//           BottomNavigationBarItem(
//             label: 'ASP.NET Core',
//             icon: Icon(Icons.book_online_rounded),
//           ),
//           BottomNavigationBarItem(
//             label: 'AngularDart',
//             icon: Icon(Icons.book_online_sharp),
//           ),
//         ],
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: NetworkImage(StaticBooks.cdn + StaticBooks.path + book),
//             fit: BoxFit.scaleDown,
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.book_online),
//         onPressed: () {
//           print('Awesome book!');
//         },
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Succinctly(
//         book: StaticBooks.covers[0],
//         title: StaticBooks.titles[0],
//       ),
//       theme: ThemeData(
//         primaryColor: Colors.indigo,
//         hintColor: Colors.amber,
//         textTheme: TextTheme(
//           bodyText2: TextStyle(fontSize: 26, fontStyle: FontStyle.italic),
//         ),
//         brightness: Brightness.dark,
//       ),
//     );
//   }
// }


//Tab bar

