import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:io';
import 'personal_data.dart';
import 'contact.dart';
import 'experience.dart';
import 'settings.dart';
import 'frequently_asked_questions.dart';
import 'questions.dart';
import 'community.dart';
import '../loading.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: HexColor('#4A5568'),
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        title: Text(
          widget.title,
          style: GoogleFonts.poppins(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),

      body: Container(
        child: Column(
          children: [
            // Profile Content
            Container(
              padding: const EdgeInsets.all(10),
              height: 100.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('assets/images/usman.jpg'),
                  ),
                  const SizedBox(width: 10.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Al-Fhaigar J. Usman',
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 5.0),
                      Text(
                        'Fullstack Developer, Software Developer',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Divider 1
            Container(
              height: 5,
              decoration: BoxDecoration(
                color: HexColor('#E7E5E4'),
              ),
            ),

            // Personal Data
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PersonalData()),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.info,
                          color: Colors.grey[500],
                          size: 35,
                        ),
                        const SizedBox(width: 12),
                        Text(
                          'Personal Data',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey[600],
                      size: 16,
                    ),
                  ],
                ),
              ),
            ),

            // Contacts
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ContactPage()),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.grey[500],
                          size: 35,
                        ),
                        const SizedBox(width: 12),
                        Text(
                          'Contacts',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey[600],
                      size: 16,
                    ),
                  ],
                ),
              ),
            ),

            // Experiences
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ExperiencesPage()),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.badge,
                          color: Colors.grey[500],
                          size: 35,
                        ),
                        const SizedBox(width: 12),
                        Text(
                          'Experiences',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey[600],
                      size: 16,
                    ),
                  ],
                ),
              ),
            ),

            // Settings
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.settings,
                          color: Colors.grey[500],
                          size: 35,
                        ),
                        const SizedBox(width: 12),
                        Text(
                          'Settings',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey[600],
                      size: 16,
                    ),
                  ],
                ),
              ),
            ),

            // Divider 2
            Container(
              height: 5,
              decoration: BoxDecoration(
                color: HexColor('#E7E5E4'),
              ),
            ),

            // Frequently Asked Questions
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.help_outline,
                          color: Colors.grey[500],
                          size: 35,
                        ),
                        const SizedBox(width: 12),
                        Text(
                          'FAQs',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey[600],
                      size: 16,
                    ),
                  ],
                ),
              ),
            ),

            // Questions
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.question_answer,
                          color: Colors.grey[500],
                          size: 35,
                        ),
                        const SizedBox(width: 12),
                        Text(
                          'Questions',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey[600],
                      size: 16,
                    ),
                  ],
                ),
              ),
            ),

            // Community
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.people_alt,
                          color: Colors.grey[500],
                          size: 35,
                        ),
                        const SizedBox(width: 12),
                        Text(
                          'Community',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey[600],
                      size: 16,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
