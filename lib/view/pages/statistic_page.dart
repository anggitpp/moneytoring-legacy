part of 'pages.dart';

class StatisticPage extends StatefulWidget {
  @override
  _StatisticPageState createState() => _StatisticPageState();
}

class _StatisticPageState extends State<StatisticPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: backColor,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 4, spreadRadius: 1, color: Colors.black26)
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.home,
                    size: 35,
                  ),
                  SizedBox(
                    height: 35,
                    width: 35,
                    child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/product.png')),
                  ),
                  Icon(
                    Icons.pie_chart,
                    size: 35,
                    color: mainColor,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
