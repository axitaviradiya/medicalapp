import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String doctorImagepath;
  final String rating;
  final String docotName;
  final String doctorProfession;

  DoctorCard({
    required this.doctorImagepath,
    required this.rating,
    required this.docotName,
    required this.doctorProfession,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.deepPurple[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            //picture
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                doctorImagepath,
                height: 55.0,
              ),
            ),

            //rating
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[600],
                ),
                Text(
                  rating,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),

            //doctor name
            Text(
              docotName,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
            ),

            //title
            Text(doctorProfession + '7 y.e.'),
          ],
        ),
      ),
    );
  }
}
