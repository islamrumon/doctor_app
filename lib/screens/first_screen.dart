import 'package:doctor_app/screens/doctors_screen.dart';
import 'package:doctor_app/widgets/cat_card.dart';
import 'package:doctor_app/widgets/doctor_card_one.dart';
import 'package:doctor_app/widgets/doctor_card_tow.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.only(left: 24, right: 24, top: 24, bottom: 2),
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(children: const [
              Text('Hi,',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400)),
              Text('Rumon',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w700))
            ]),
            const CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage("assets/img.png"),
              backgroundColor: Colors.transparent,
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 20, bottom: 10),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DoctorScreens()));
            },
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(16.0),
                  border: Border.all(color: Colors.black45, width: 2)),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search, color: Colors.black54)),
                  const Text(
                    'Search By the doctor name',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CatCard(),
              CatCard(),
              CatCard(), CatCard(),
              CatCard(),
              CatCard(),


            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'My Appointment',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        DoctorCardTwo(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Top rated doctors',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        DoctorCardOne(),
        SizedBox(
          height: 10,
        ),
        DoctorCardOne(),
        SizedBox(
          height: 10,
        ),
        DoctorCardOne(),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
