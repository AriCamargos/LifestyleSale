import 'package:flutter/material.dart';
import 'package:lifestyle_sale/components/top_folder.dart';

void main() => runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage()));

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

final List<String> _listItem = [
  'assets/images/one.jpg',
  'assets/images/two.jpg',
  'assets/images/three.jpg',
  'assets/images/four.jpg',
  'assets/images/five.jpg',
  'assets/images/six.jpg',
  'assets/images/seven.jpg',
  'assets/images/eight.jpg',
  'assets/images/nine.jpg',
  'assets/images/ten.jpg',
  'assets/images/eleven.png',
  'assets/images/twelve.jpg',
];

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        title: const Center(child: Text('Home')),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 40,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text('0'),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const TopFolder(),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: _listItem
                    .map((item) => Card(
                          color: Colors.transparent,
                          elevation: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(item),
                                    fit: BoxFit.cover)),
                            child: Transform.translate(
                              offset: const Offset(50, -50),
                              child: Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 65, vertical: 63),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white),
                                child: const Icon(
                                  Icons.bookmark_border,
                                  size: 15,
                                ),
                              ),
                            ),
                          ),
                        ))
                    .toList(),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
