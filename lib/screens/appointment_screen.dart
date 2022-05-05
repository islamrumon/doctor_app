
import 'package:doctor_app/widgets/doctor_card_one.dart';
import 'package:doctor_app/widgets/doctor_card_tow.dart';
import 'package:flutter/material.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({Key? key}) : super(key: key);

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('My appointments'),
          actions: [
            IconButton(onPressed: (){

            }, icon: Icon(Icons.add))
          ],
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [

            SizedBox(
              height: 20,
            ),
            DoctorCardTwo(),
            SizedBox(
              height: 10,
            ),
            DoctorCardTwo(),
            SizedBox(
              height: 10,
            ),
            DoctorCardTwo(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
