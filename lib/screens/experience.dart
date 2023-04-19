import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExperiencesPage extends StatefulWidget {
  const ExperiencesPage({Key? key}) : super(key: key);

  @override
  State<ExperiencesPage> createState() => _ExperiencesPageState();
}

class _ExperiencesPageState extends State<ExperiencesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Personal Data'),
      ),
      body: Center(
        child: Text(
          'This is Personal Data Page',
          style: GoogleFonts.poppins(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Colors.grey[700],
          ),
        ),
      ),
    );
  }
}
