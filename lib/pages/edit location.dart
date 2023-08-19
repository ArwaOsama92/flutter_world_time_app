// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class EditLocation extends StatefulWidget {
  const EditLocation({super.key});

  @override
  State<EditLocation> createState() => _EditLocationState();
}

class _EditLocationState extends State<EditLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 191, 191, 199),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(24, 0, 0, 0),
        title: Text(
          "Choose Location",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Center(
        child: Column(
          
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  onTap: () {},
                  title: Text("KSA - Riyadh", style: TextStyle(fontSize: 23 ),),
                  leading: CircleAvatar(backgroundImage: AssetImage("assets/sa.png"),),
                  
                  
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
