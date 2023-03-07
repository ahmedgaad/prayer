import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prayer_timing/core/services/service_locator.dart';
import 'package:prayer_timing/core/utils/color_manager.dart';
import 'package:prayer_timing/features/prayer_times/presentation/widgets/custom_list_tile.dart';
import 'package:table_calendar/table_calendar.dart';

// ignore: must_be_immutable
class HomeView extends StatelessWidget {
  HomeView({super.key});

  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            backgroundColor: ColorManager.color1,
            title: Text(
              "Prayer Times",
              style: GoogleFonts.lato(),
            ),
            centerTitle: false,
            elevation: 0.0,
          ),
          body: Column(
            children: [
              Container(
                child: TableCalendar(
                  headerStyle: const HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                  ),
                  availableGestures: AvailableGestures.all,
                  locale: "en_US",
                  focusedDay: today,
                  firstDay: DateTime.utc(2001, 7, 26),
                  lastDay: DateTime.utc(2050, 7, 26),
                ),
              ),
             Column(
               children: [
                
                 const CustomListTile(prayerName: 'Fajr', prayerTime: '02:00 AM'),
                 const Divider(),
               ],
             ),
            ],
          ),
        );
  }
}
