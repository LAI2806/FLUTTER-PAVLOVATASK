import 'package:flutter/material.dart';

void main() {
  runApp(const LabActivity2App());
}

class LabActivity2App extends StatelessWidget {
  const LabActivity2App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Lab Activity 2'),
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Stack Containers'),
                Tab(text: 'Images'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              StackActivity(),
              ImageActivity(),
            ],
          ),
        ),
      ),
    );
  }
}

class StackActivity extends StatelessWidget {
  const StackActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 150,
        height: 150,
        child: Stack(
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            Positioned(
              left: 10,
              top: 10,
              child: Container(
                height: 90,
                width: 90,
                color: Colors.blue,
              ),
            ),
            Positioned(
              left: 20,
              top: 20,
              child: Container(
                height: 80,
                width: 80,
                color: Colors.green,
              ),
            ),
            Positioned(
              left: 30,
              top: 30,
              child: Container(
                height: 70,
                width: 70,
                color: Colors.yellow,
              ),
            ),
            Positioned(
              left: 40,
              top: 40,
              child: Container(
                height: 60,
                width: 60,
                color: Colors.black,
              ),
            ),
            Positioned(
              left: 50,
              top: 50,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.purple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageActivity extends StatelessWidget {
  const ImageActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/male.jpg',
              width: 200,
              height: 180,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 10),
            Image.asset(
              'assets/female.jpg',
              width: 200,
              height: 180,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 10),
            Image.asset(
              'assets/male2.jpg',
              width: 200,
              height: 180,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
