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
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                      horizontal: defaultMargin, vertical: 20),
                  height: 200,
                  decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              color: backColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(
                              MdiIcons.menu,
                              size: 18,
                            ),
                          ),
                          Column(
                            children: [
                              Text('Total Profit', style: largeFont),
                              Text(
                                'Rp. 5.000.000',
                                style: largeFont.copyWith(
                                    fontWeight: FontWeight.w600, fontSize: 22),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 35,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2 -
                                  26 -
                                  10,
                              height: 70,
                              decoration: BoxDecoration(
                                color: backColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Purchase',
                                    style: greyFont.copyWith(fontSize: 18),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Rp. ',
                                        style: greyFont.copyWith(fontSize: 18),
                                      ),
                                      Text(
                                        '7.000.000',
                                        style: mediumFont.copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2 -
                                  26 -
                                  10,
                              height: 70,
                              decoration: BoxDecoration(
                                color: backColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Sale',
                                    style: greyFont.copyWith(fontSize: 18),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Rp. ',
                                        style: greyFont.copyWith(fontSize: 18),
                                      ),
                                      Text(
                                        '7.000.000',
                                        style: mediumFont.copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
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
                                  'Income',
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
                        blurRadius: 1, spreadRadius: 0.5, color: Colors.black26)
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
                      Icons.donut_small,
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
