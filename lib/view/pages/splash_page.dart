part of 'pages.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final Duration duration = Duration(seconds: 2);

      Timer(duration, () {
        Get.to(MainPage());
      });
    });
  }

  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: backColor,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: backColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Moneytoring',
                style: largeFont.copyWith(
                    fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Text(
                  'Monitoring your money now\neasier than before.',
                  textAlign: TextAlign.center,
                  style: greyFont.copyWith(fontSize: 18),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image(
                image: AssetImage('assets/splash_image.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
