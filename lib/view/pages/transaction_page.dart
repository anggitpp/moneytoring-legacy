part of 'pages.dart';

class TransactionPage extends StatefulWidget {
  @override
  _TransactionPageState createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
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
      body: Column(
        children: [
          Container(
            margin:
                EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back,
                  size: 24,
                ),
                Row(
                  children: [
                    Text('Purchase', style: largeFont),
                    SizedBox(width: 10),
                    Icon(
                      FontAwesomeIcons.exchangeAlt,
                      size: 12,
                    ),
                  ],
                ),
                SizedBox(
                  width: 14,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            height: 110,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                TransactionCategories(),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
