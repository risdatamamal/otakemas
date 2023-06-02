part of '../../pages.dart';

class KalenderPuasaPage extends StatefulWidget {
  @override
  _KalenderPuasaPageState createState() => _KalenderPuasaPageState();
}

class _KalenderPuasaPageState extends State<KalenderPuasaPage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      _focusedDay = focusedDay;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: black,
        ),
        backgroundColor: mainColor,
        title: const Text(kalenderPuasa,
            style: TextStyle(
                fontSize: 24, color: black, fontWeight: FontWeight.w700)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TableCalendar(
              calendarFormat: _calendarFormat,
              focusedDay: _focusedDay,
              firstDay: DateTime(2000),
              lastDay: DateTime(2050),
              startingDayOfWeek: StartingDayOfWeek.sunday,
              onDaySelected: _onDaySelected,
              calendarStyle: CalendarStyle(
                markersAlignment: Alignment.bottomCenter,
                todayDecoration: BoxDecoration(
                  color: mainColor,
                  shape: BoxShape.circle,
                ),
                weekendTextStyle: TextStyle(color: red),
              ),
              daysOfWeekStyle: const DaysOfWeekStyle(
                weekendStyle: TextStyle(color: red),
              ),
              headerStyle: HeaderStyle(
                titleTextStyle: TextStyle(color: black, fontSize: 20.0),
                titleCentered: true,
                formatButtonVisible: false,
              ),
              calendarBuilders: CalendarBuilders(
                markerBuilder: (context, date, events) {
                  final hijriDate = HijriCalendar.fromDate(date).toFormat("d");
                  final hijriCalendar = HijriCalendar.fromDate(date);
                  if (date.weekday == DateTime.monday || date.weekday == DateTime.thursday) {
                    return Positioned(
                      top: 1,
                      right: 1,
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue, // Ubah warna menjadi biru
                        ),
                      ),
                    );
                  }
                  if (hijriDate == "13" || hijriDate == "14" || hijriDate == "15") {
                    return Positioned(
                      top: 1,
                      right: 1,
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.purple, // Ubah warna menjadi ungu
                        ),
                      ),
                    );
                  }
                  if (hijriCalendar.hMonth == 1 && hijriCalendar.hDay == 10 || hijriCalendar.hMonth == 1 && hijriCalendar.hDay == 9) {
                    return Positioned(
                      top: 1,
                      right: 1,
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green, // Ubah warna menjadi hijau
                        ),
                      ),
                    );
                  }
                  else {
                    return const SizedBox.shrink();
                  }
                },
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, bottom: 8.0),
              child: Text(
                "Keterangan",
                style: GoogleFonts.poppins(
                  color: black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Row(
                    children: [
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue, // Ubah warna sesuai keinginan
                        ),
                      ),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Puasa Senin Kamis",
                            style: GoogleFonts.poppins(
                              color: black,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 3.0),
                          Text(
                            "Puasa yang dilaksanakan setiap hari senin dan kamis",
                            style: GoogleFonts.poppins(
                              color: black,
                              fontSize: 8,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Row(
                    children: [
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.purple, // Ubah warna sesuai keinginan
                        ),
                      ),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Puasa Ayyamul Bidh",
                            style: GoogleFonts.poppins(
                              color: black,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 3.0),
                          Text(
                            "Puasa yang dilakukan setiap pertengahan bulan hijriyah",
                            style: GoogleFonts.poppins(
                              color: black,
                              fontSize: 8,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Row(
                    children: [
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green, // Ubah warna sesuai keinginan
                        ),
                      ),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Puasa Asyura dan Tasu’a",
                            style: GoogleFonts.poppins(
                              color: black,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 3.0),
                          Text(
                            "Keutamaannya menghapus dosa satu tahun ke belakang",
                            style: GoogleFonts.poppins(
                              color: black,
                              fontSize: 8,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}