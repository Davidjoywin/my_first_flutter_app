import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My first app",
      home: MyExample()
    );
  }
}

class MyExample extends StatelessWidget {
  const MyExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 32, 65, 82),
        leading: const IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white
          ),
          tooltip: 'Navigation Menu',
          onPressed: null,
        ),
        title: Container(
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.topLeft,
          child: const Text(
            'TO-DO',
            style: TextStyle(color: Colors.white)
          )
        )
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
          alignment: Alignment.center,
          child: SizedBox(
            width: 200,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.all(20.0),
              itemCount: 30,
              itemBuilder: (BuildContext context, index) => const NewBox()
            ),
          )
        )
      )
      // body: const Center(
      //   child: Text(
      //     'hello world',
      //     style: TextStyle(fontSize: 50),
      //     textDirection: TextDirection.ltr
      //   )
      // ),
    );
  }
}

class NewBox extends StatelessWidget {
  const NewBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
      alignment: Alignment.centerLeft,
      width: 50,
      height: 50,
      color: Colors.red,
      child: const Padding(
        padding: EdgeInsets.only(left: 20),
        child: Text(
          "hello world",
          style: TextStyle(color:Colors.white)
        )
      )
    );
  }
}