import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Random Game")),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.85,
                  crossAxisCount: 3),
              itemBuilder: (context, index) {
                return  Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: CircleAvatar(child: Text("1",style: TextStyle(fontSize: 50.0),),),
                );
              },itemCount: 9,
            ),
          ),
        ],
      ),
    );
  }
}
