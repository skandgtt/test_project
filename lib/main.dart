import 'package:demo_first_app/list_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Change password'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        backgroundColor: Color.fromARGB(255, 27, 19, 120),
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            children: <Widget>[
              const Text(
                "NOTE: Your new password must be different from new passsword",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                    hintText: "Old password",
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    fillColor: Color.fromARGB(255, 224, 224, 224),
                    filled: true,
                    suffixIcon: Icon(Icons.remove_red_eye)),
              ),
              const SizedBox(height: 20),
              const TextField(
                obscuringCharacter: "*",
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "New password",
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    fillColor: Color.fromARGB(255, 224, 224, 224),
                    filled: true,
                    suffixIcon: Icon(Icons.remove_red_eye)),
              ),
              const SizedBox(height: 20),
              Container(
                width: 360,
                height: 40,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(124, 234, 36, 6),
                      Colors.yellow
                    ])),
                child: MaterialButton(
                  minWidth: 360,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ListPage()));
                  },
                  child: const Text("Change password"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
