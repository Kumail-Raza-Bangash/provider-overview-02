import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Provider Overview 02',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider 02'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
             Text('- name: Dog name', style: TextStyle(fontSize: 20.0,),),
             SizedBox( height: 20.0,),
             BreedAndAge(),
          ],
        ),
      ),
    );
  }
}

class BreedAndAge extends StatefulWidget {
  const BreedAndAge({super.key});

  @override
  State<BreedAndAge> createState() => _BreedAndAgeState();
}

class _BreedAndAgeState extends State<BreedAndAge> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
             const Text('- breed: Dog breed', style: TextStyle(fontSize: 20.0,),),
             const SizedBox( height: 20.0,),
             Age(),
          ],
        ),
    );
  }
}
class Age extends StatefulWidget {
  const Age({super.key});

  @override
  State<Age> createState() => _AgeState();
}

class _AgeState extends State<Age> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
             Text('- age: Dog age', style: TextStyle(fontSize: 20.0,),),
          ],
        ),
    );
  }
}