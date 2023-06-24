part of 'pages.dart';

class StopwatchWidget extends StatefulWidget {
  final TextEditingController alasanController = TextEditingController();

  @override
  _StopwatchWidgetState createState() => _StopwatchWidgetState();
}

class _StopwatchWidgetState extends State<StopwatchWidget> with TickerProviderStateMixin {
  late Stopwatch _stopwatch;
  late Timer _timer;
  late bool _isRunning;
  late String _elapsedTime;
  late int _elapsedDays;
  final _formKey = GlobalKey<FormState>();

  //TODO Animation CircleProgress
  late AnimationController _animationController;
  double _progress = 0.0;
  final double _duration = 24.0; // Durasi dalam jam
  double _currentHours = 0.0; // Jam saat ini

  @override
  void initState() {
    super.initState();
    _stopwatch = Stopwatch();
    _isRunning = false;
    _elapsedTime = '00:00:00';
    _elapsedDays = 0;

    //TODO Animation CircleProgress
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(hours: _duration.toInt()),
    );
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _animationController.reset();
      }
    });
  }

  void _startTimer() {
    if (!_isRunning) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: mainColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            title: const Text('Mulai Waktu'),
            content: const Text('Memulai Waktu Menahan Nafsu'),
            actions: <Widget>[
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(blue),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
                ),
                onPressed: () {

                },
                child: Text(
                  "Old Date",
                  style: GoogleFonts.poppins(
                    color: white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(red),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  "Tidak",
                  style: GoogleFonts.poppins(
                    color: white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              //TODO Animation CircleProgress Jika Berjalan
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(green),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                  _stopwatch.start();
                  _timer =
                      Timer.periodic(Duration(milliseconds: 1), (Timer timer) {
                    if (_stopwatch.isRunning) {
                      setState(() {
                        _elapsedTime = _formatTime(_stopwatch.elapsed);
                        _elapsedDays =
                            (_stopwatch.elapsed.inHours / 24).floor();

                        //TODO Animation CircleProgress Jika Berjalan
                        _currentHours = _stopwatch.elapsed.inHours.toDouble();
                        if (_stopwatch.elapsed.inHours > _duration) {
                          _currentHours = 0.0; // Mengulang jika waktu melebihi 24 jam
                        }
                      });
                    }
                  });
                  setState(() {
                    _isRunning = true;

                    //TODO Animation CircleProgress Jika Berjalan
                    _progress = _currentHours / _duration;
                  });

                  //TODO Animation CircleProgress Jika Berjalan
                  _animationController.forward(from: 0.0); // Memulai animasi dari awal
                },
                child: Text(
                  "Ya",
                  style: GoogleFonts.poppins(
                    color: white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
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
            backgroundColor: mainColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            title: const Text('Mengapa Anda Berhenti?'),
            content: Form(
              key: _formKey,
              child: CustomTextFormField(
                color: black,
                controller: widget.alasanController,
                hintText: 'Alasan',
                filteringTextInputFormatter: FilteringTextInputFormatter.allow(
                  RegExp('[a-zA-Z0-9 ]'),
                ),
                textInputType: TextInputType.text,
              ),
            ),
            actions: <Widget>[
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(red),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  "Tidak",
                  style: GoogleFonts.poppins(
                    color: white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(green),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
                ),
                onPressed: () {
                  _submit(context);
                },
                child: Text(
                  "Submit",
                  style: GoogleFonts.poppins(
                    color: white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          );
        },
      );
    }
  }

  void _submit(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      StopTimerRepository stopTimerRepository = StopTimerRepository(store: store);
      User? user = UserRepository(store: store).getUserById(1);

      SharedPreferences prefs = await SharedPreferences.getInstance();

      stopTimerRepository.addOrUpdateStopTimer(
        StopTimer(
          elapsedDays: _elapsedDays,
          elapsedTime: _elapsedTime,
          alasan: widget.alasanController.text,
        ),
      );

      Navigator.of(context).pop();
      _stopwatch.stop();

      //TODO: Save to database StopTime
      print(_elapsedDays);
      print(_elapsedTime);
      print(widget.alasanController.text);

      _stopwatch.reset();
      setState(() {
        _isRunning = false;
        _elapsedTime = '00:00:00';
        _elapsedDays = 0;
      });
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

    //TODO Animation CircleProgress
    _animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          //TODO Animation CircleProgress
          SizedBox(
            width: 200,
            height: 200,
            child: CircularProgressIndicator(
              value: _progress,
              strokeWidth: 10,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            _elapsedTime,
            style: const TextStyle(fontSize: 12),
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
    );
  }
}
