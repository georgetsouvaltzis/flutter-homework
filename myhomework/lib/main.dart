import 'package:flutter/material.dart';

void main() {
  runApp(const HomeworkApp());
}

class HomeworkApp extends StatelessWidget {
  const HomeworkApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animals',
      home: HomeScreen()
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _imageUrl = "assets/bunny.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animals"),centerTitle: true),
      body: Center(
        child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(_imageUrl,width: 100,height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 FloatingActionButton(
                     child: Icon(Icons.refresh),
                     onPressed: ()
                     {
                       setState(() {
                           _imageUrl = "assets/falcon.png";
                       });
                     }),
                 FloatingActionButton(
                     child: Icon(Icons.refresh),
                     onPressed: () {
                      setState(() {
                        _imageUrl = "assets/parrot.png";
                      });
                     }),
               ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    child: Icon(Icons.refresh),
                    onPressed: () {
                      setState(() {
                        _imageUrl = "assets/cat.png";
                      });
                    }),
                  FloatingActionButton(
                    child: Icon(Icons.refresh),
                    onPressed: () {
                      setState(() {
                        _imageUrl = "assets/bunny.png";
                      });
                    })
                ],
              )
            ],
          )
      ),
    );
  }
}



