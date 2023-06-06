part of 'pages.dart';

class StopwatchWidget extends StatefulWidget {
  @override
  _StopwatchWidgetState createState() => _StopwatchWidgetState();
}

class _StopwatchWidgetState extends State<StopwatchWidget> {
  late Stopwatch _stopwatch;
  late Timer _timer;
  late bool _isRunning;
  late String _elapsedTime;
  late int _elapsedDays;

  @override
  void initState() {
    super.initState();
    _stopwatch = Stopwatch();
    _isRunning = false;
    _elapsedTime = '00:00:00';
    _elapsedDays = 0;
  }

  void _startTimer() {
    if (!_isRunning) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Mulai Waktu'),
            content: Text('Memulai Waktu Menahan Nafsu'),
            actions: <Widget>[
              ElevatedButton(
                child: Text('Tidak'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              ElevatedButton(
                child: Text('Ya'),
                onPressed: () {
                  Navigator.of(context).pop();
                  _stopwatch.start();
                  _timer = Timer.periodic(Duration(milliseconds: 1), (Timer timer) {
                    if (_stopwatch.isRunning) {
                      setState(() {
                        _elapsedTime = _formatTime(_stopwatch.elapsed);
                        _elapsedDays = (_stopwatch.elapsed.inHours / 24).floor();
                      });
                    }
                  });
                  setState(() {
                    _isRunning = true;
                  });
                },
              ),
            ],
          );
        },
      );
    }
  }

  void _stopTimer() {
    if (_isRunning) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Konfirmasi'),
            content: Text('Apakah Anda ingin menghentikan stopwatch?'),
            actions: <Widget>[
              ElevatedButton(
                child: Text('Tidak'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              ElevatedButton(
                child: Text('Ya'),
                onPressed: () {
                  Navigator.of(context).pop();
                  _stopwatch.stop();
                  _stopwatch.reset();
                  setState(() {
                    _isRunning = false;
                    _elapsedTime = '00:00:00';
                    _elapsedDays = 0;
                  });
                },
              ),
            ],
          );
        },
      );
    }
  }

  String _formatTime(Duration duration) {
    String hours = (duration.inHours % 24).toString().padLeft(2, '0');
    String minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
    String seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');

    return '$hours:$minutes:$seconds';
  }

  @override
  void dispose() {
    _stopwatch.stop();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
            10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Waktu Menahan Nafsu",
              style: GoogleFonts.poppins(
                color: black,
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              _elapsedTime,
              style: TextStyle(fontSize: 12),
            ),
            Text(
              '$_elapsedDays Hari',
              style: GoogleFonts.poppins(
                color: black,
                fontSize: 36,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 16),
            IconButton(
                onPressed: _isRunning ? _stopTimer : _startTimer,
                icon: Icon(_isRunning
                    ? Icons.stop_circle_outlined
                    : Icons.play_circle_outline)),
          ],
        ),
      ),
    );
  }
}
