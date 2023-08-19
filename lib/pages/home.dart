// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {

Map receivedDatafromLoading =  ModalRoute.of(context)!.settings.arguments as Map; 

    return Scaffold(



      body: Container(
        decoration: BoxDecoration(  color: Color.fromARGB(255, 55, 53, 63),
          image: DecorationImage(image: AssetImage("assets/day.png"), fit: BoxFit.cover),),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.edit_location,
                  color: Color.fromARGB(255, 255, 129, 129),
                  size: 24.0,
                ),
                label: Text(
                  "Edit location",
                  style: TextStyle(fontSize: 19),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(146, 90, 104, 223)),
                  padding: MaterialStateProperty.all(EdgeInsets.all(22)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
                ),
              ),
           SizedBox( height: 300),
           Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 0 , vertical: 32),
            color: Color.fromARGB(113, 0, 0, 0),
            child: Column(
              children: [
                Text(receivedDatafromLoading["time"],
                style: TextStyle(fontSize: 50, color: Colors.white),
                ),
                SizedBox(height: 25),
      
                Text(receivedDatafromLoading["location"]
                ,style: TextStyle(fontSize: 30, color: Colors.white ),)
              ],
            ),
      
           )
           
           
            ],
          ),
        ),
      ),
    );
  }
}
