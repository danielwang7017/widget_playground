import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: const HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
        title: const Text('Welcome!'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: ElevatedButton(
          
          onPressed: () {
           
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const IconPage()),
            );
          },
         
          child: const Text('See My Favorite Icon'),
        ),
      ),
    );
  }
}


class IconPage extends StatelessWidget {
  const IconPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text('My Favorite Icon'),
        backgroundColor: Colors.indigo,
      ),
      
      body: const Center(
        child: Icon(
          Icons.home,
          color: Colors.blue,
          size: 200.0,
        ),
      )
    );
  }
}
