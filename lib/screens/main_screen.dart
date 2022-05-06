
// ignore_for_file: unnecessary_this

import 'package:doctor_app/screens/account_screen.dart';
import 'package:doctor_app/screens/appointment_request.dart';
import 'package:doctor_app/screens/appointment_screen.dart';
import 'package:doctor_app/screens/first_screen.dart';
import 'package:doctor_app/screens/member_profile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';




class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _selectedIndex = 0;
 int id = 0;
 String  name = 'name';
String  token = 'token';
String  email = 'email';
String  role = 'role';


  featchDataSF() async{
     final prefs = await SharedPreferences.getInstance();
      token = prefs.getString('token')!;
       name = prefs.getString('name')!;
   email =  prefs.getString('email')!;
    role =  prefs.getString('role')!;
          // await prefs.getString('device_token');
    id =  prefs.getInt('id')!;
     if(role == 'doctor'){
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const AppointMentRequest()));
     }else{
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const MainScreen()));
     }
    setState(() {

    });

  }





  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // featchDataSF();
  }

  final List<Widget> _pages = <Widget>[
    FirstScreen(),
    const AppointmentScreen(),
    const MemberProfile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex, //New
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.note_add),
              label: 'Appointment',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}




