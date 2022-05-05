
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/getwidget.dart';

class AppointmentCreate extends StatefulWidget {
  const AppointmentCreate({Key? key}) : super(key: key);

  @override
  State<AppointmentCreate> createState() => _AppointmentCreateState();
}

class _AppointmentCreateState extends State<AppointmentCreate> {

  final _addTitle = TextEditingController();

  final _description = TextEditingController();
  DateTime selectedDate = DateTime.now();

  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2010),
      lastDate: DateTime(2025),

    );
    if (selected != null && selected != selectedDate)
      setState(() {
        selectedDate = selected;
      });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: const Text('Appointment create'),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16,right: 16,top: 20),
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            TextField(
              controller: _addTitle,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                hintText: "Write the subject",
                labelText: 'Subjects',
                floatingLabelBehavior: FloatingLabelBehavior.always,

              ),
            ),
            const SizedBox(
              height: 25,
            ),
            TextField(
              controller: _description,
              maxLines: 5,
              decoration: InputDecoration(
                enabledBorder:  OutlineInputBorder(
                  borderRadius:  BorderRadius.circular(15.0),
                  // borderSide: BorderSide(color: blackSemiColor),
                ),
                hintText: "Description*",
                labelText: 'Description*',
                floatingLabelBehavior: FloatingLabelBehavior.always,

              ),
            ),
            const SizedBox(
              height: 25,
            ),
            GFButton(
              onPressed: () {
                _selectDate(context);
              },
              color: Colors.lightGreen,
              text: "Change the date",
              textStyle: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              icon: const Icon(FontAwesomeIcons.clock, size: 16),
              shape: GFButtonShape.pills,
            ),
            const SizedBox(
              height: 20,
            ),
            Text("The selected date is :${selectedDate.day}/${selectedDate.month}/${selectedDate.year}",style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold,wordSpacing: 1.4),),
            const SizedBox(
              height: 25,
            ),
            GFButton(
              onPressed: () {},
              text: "Submit appointment",
              textStyle: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              icon: const Icon(FontAwesomeIcons.solidSave, size: 16),
              shape: GFButtonShape.standard,
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    ));
  }
}
