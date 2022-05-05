
import 'package:flutter/material.dart';
import '../widgets/avatar_widget.dart';

class MemberProfile extends StatelessWidget {
  const MemberProfile({Key? key}) : super(key: key);

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
