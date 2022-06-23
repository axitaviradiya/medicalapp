import 'dart:html';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medicalapp/util/category_card.dart';
import 'package:medicalapp/util/doctor_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            //app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //name
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'hello,',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Mitch Koko',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ],
                  ),
                  // profile picture

                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.person, color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    //animation or picture

                    Container(
                      height: 100,
                      width: 150,
                      child: Lottie.network(
                          'https://assets10.lottiefiles.com/packages/lf20_tutvdkg0.json'),
                    ),

                    //how do you feel + button
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'How do you feel?',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Fill out your medical card right now',
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(height: 15),
                          Container(
                            width: 130,
                            height: 40,
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple[300],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Text(
                                'Get Started',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),

            //search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'How  can we help you?',
                  ),
                ),
              ),
            ),

            SizedBox(height: 25),
            //listview

            Container(
              color: Colors.deepPurple[100],
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                    categoryName: 'Dentist',
                    iconImagepath: 'lib/icons/tooth.png',
                  ),
                  CategoryCard(
                    categoryName: 'Surgeon',
                    iconImagepath: 'lib/icons/doctor.png',
                  ),
                  CategoryCard(
                    categoryName: 'capsules',
                    iconImagepath: 'lib/icons/capsules.png',
                  ),
                  CategoryCard(
                    categoryName: 'Medicine',
                    iconImagepath: 'lib/icons/medicine.png',
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),
            //doctor list

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Doctor list',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[500]),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),

            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                DoctorCard(
                  doctorImagepath: 'lib/images/doctor1.jpg',
                  rating: '4.9',
                  docotName: 'Dr. Ganesh gupta',
                  doctorProfession: 'Tharapist',
                ),
                DoctorCard(
                  doctorImagepath: 'lib/images/doctor2.jpg',
                  rating: '4.4',
                  docotName: 'Dr. Mitch koko',
                  doctorProfession: 'psychologist',
                ),
                DoctorCard(
                  doctorImagepath: 'lib/images/doctor3.jpg',
                  rating: '5.0',
                  docotName: 'Dr. Steve jobs',
                  doctorProfession: 'surgeon',
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
