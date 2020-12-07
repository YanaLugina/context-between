import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ),);
}
class User {
  final String name;
  final int age;

  User({ this.name, this.age });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First home'),
          centerTitle: true,
        ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            User user = User(name: 'Marfa', age: 32);
            Route route = MaterialPageRoute(builder: (context) => Page2(user: user));
            Navigator.push(context, route);
          },
          child: Text('Ouuuu home'),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  final User user;
  Page2({this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${this.user.name} - ${this.user.age}'),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go Back'),
        ),
      ),
    );
  }
}
