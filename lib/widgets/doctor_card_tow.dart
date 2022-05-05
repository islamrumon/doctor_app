
import 'package:flutter/material.dart';

class DoctorCardTwo extends StatefulWidget {
  const DoctorCardTwo({Key? key}) : super(key: key);

  @override
  State<DoctorCardTwo> createState() => _DoctorCardTwoState();
}

class _DoctorCardTwoState extends State<DoctorCardTwo> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Container(
      width: size.width,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ), //Border.all
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundImage:
                  AssetImage('assets/doctor.png'),
                  // backgroundColor: Colors.transparent,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                child: Column(
                  children: [
                    Text('Doctor Rumon',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                    Text('Surgeon ',style: TextStyle(color: Colors.black45,fontSize: 14),)
                  ],
                ),
              )
            ],
          ),
          Divider(
            height: 10,
            color: Colors.grey,
          ),
          Padding(padding: EdgeInsets.all(8),child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Icon(Icons.access_time),
              Text(' Friday 12.23 pm - 2.00 am',style: TextStyle(
                fontWeight: FontWeight.bold,

              ),),
            ],
          ),)
        ],
      ),
    );
  }
}
