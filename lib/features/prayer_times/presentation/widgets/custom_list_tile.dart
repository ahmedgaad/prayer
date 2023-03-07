import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomListTile extends StatelessWidget {
  final String prayerName;
  final String prayerTime;

  const CustomListTile({
    super.key,
    required this.prayerName,
    required this.prayerTime,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        prayerName,
        style: GoogleFonts.elMessiri(
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Text(prayerTime),
    );
  }
}
