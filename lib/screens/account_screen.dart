
import 'package:doctor_app/screens/appointment_create..dart';
import 'package:doctor_app/widgets/avatar_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/getwidget.dart';

class AccoutnScreen extends StatelessWidget {

  const AccoutnScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea (
      child: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        // customAppBar('Profile', 'home',true,context),
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(height: 14),
            AvatarWidget(
              editShow : false,
              imagePath: 'assets/doctor.png',
              onClicked: () async {},
            ),
            const SizedBox(height: 24),
            buildName(context,size),
            const SizedBox(height: 24),
            Center(child:  GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AppointmentCreate()));
              },
              child: Container(
                height: 40,
                width: 200,
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).indicatorColor,
                ),
                child: Center(child: const Text('Appointments',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
              ),
            ),),
            const SizedBox(height: 24),
            const SizedBox(height: 48),
            buildAbout(),
          ],
        ),
      ),
    );
  }

  Widget buildName(context,size) => Column(
    children: [
      const Text(
        'Shortcut Rumon',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
      const SizedBox(height: 4),
      const Text(
        'islamrumon707@gmail.com',
        style: TextStyle(color: Colors.grey),
      ),
      const Text(
        '+8801685755707',
        style: TextStyle(color: Colors.grey),
      ),
      const SizedBox(height: 4),

      const Text(
        '(765) Rating',
        style: TextStyle(color: Colors.grey),
      ),
      SizedBox(
        height: 50,
        width: size.width/1.5,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GFButton(
              onPressed: () {},
              color: Colors.grey,
              shape: GFButtonShape.standard,
              size: GFSize.LARGE,
              child: Icon(
                FontAwesomeIcons.phone,
                color: Colors.grey,
              ),
              type: GFButtonType.transparent,
            ),

            GFButton(
              onPressed: () {},
              color: Colors.grey,
              shape: GFButtonShape.standard,
              child: Icon(
                FontAwesomeIcons.googlePlusG,
                color: Colors.grey,
              ),
              size: GFSize.LARGE,
              type: GFButtonType.transparent,
            ),
            GFButton(
              onPressed: () {},
              color: Colors.grey,
              shape: GFButtonShape.standard,
              size: GFSize.LARGE,
              child: Icon(
                FontAwesomeIcons.whatsapp,
                color: Colors.grey,
              ),
              type: GFButtonType.transparent,
            ),
          ],
        ),
      )
    ],
  );



  Widget buildAbout() => Container(
    padding: const EdgeInsets.symmetric(horizontal: 48),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'About',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        Text(
          'Health articles that keep you informed about good health practices and achieve your goals.',
          style: const TextStyle(fontSize: 16, height: 1.4),
        ),
      ],
    ),
  );


}
