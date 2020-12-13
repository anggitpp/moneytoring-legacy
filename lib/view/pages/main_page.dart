part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: mainColor,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: backColor,
        body: Stack(
          children: [
            Column(
              children: [
                MainHeader(),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(
                      horizontal: defaultMargin, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Recent Transactions',
                        style: mediumFont.copyWith(fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width / 2 - 26,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: mainColor),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Income',
                                  style: mediumFont.copyWith(
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 40,
                            width: MediaQuery.of(context).size.width / 2 - 26,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: "#E5E5E5".toColor()),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Expenses',
                                  style: greyFont.copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height - 380,
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            TransactionItem(),
                            SizedBox(height: 5),
                            TransactionItem(),
                            SizedBox(height: 5),
                            TransactionItem(),
                            SizedBox(height: 5),
                            TransactionItem(),
                            SizedBox(height: 5),
                            TransactionItem(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
                      color: mainColor,
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
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
