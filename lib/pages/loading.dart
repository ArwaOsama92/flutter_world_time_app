import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  getData() async {
    Response RecivedDataFromAPI = await get(
        Uri.parse("http://worldtimeapi.org/api/timezone/Asia/Riyadh"));
    Map receivedData = jsonDecode(RecivedDataFromAPI.body);
    DateTime datetime = DateTime.parse(receivedData["utc_datetime"]);

    int offset = int.parse(receivedData["utc_offset"].substring(0, 3));

    DateTime realTime = datetime.add(Duration(hours: offset));
    String timeNow = DateFormat.jm().format(realTime);

    String timeZone = receivedData["timezone"];

    Navigator.pushReplacementNamed(context, '/home',
        arguments: {"time": timeNow, "location": timeZone});
  }




  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SpinKitFadingCircle(
              color: Color.fromARGB(255, 82, 128, 255),
              size: 170.0,
            ),
          ],
        ),
      ),
    );
  }
}
