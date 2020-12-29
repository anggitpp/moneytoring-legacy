part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Transactions> saleTransaction =
      mockTransactions.where((element) => element.category == 1).toList();
  List<Transactions> purchaseTransaction =
      mockTransactions.where((element) => element.category == 2).toList();

  int selectedTransaction = 1;

  double totalSelling = mockTransactions
      .where((element) => element.category == 1)
      .toList()
      .map((expense) => expense.margin)
      .fold(0, (prev, amount) => prev + amount);

  double totalPurchase = mockTransactions
      .where((element) => element.category == 2)
      .toList()
      .map((expense) => expense.margin)
      .fold(0, (prev, amount) => prev + amount);

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
                MainHeader(totalPurchase, totalSelling),
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
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedTransaction = 1;
                              });
                            },
                            child: Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width / 2 - 26,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      bottomLeft: Radius.circular(8)),
                                  color: selectedTransaction == 1
                                      ? mainColor
                                      : "#E5E5E5".toColor()),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Sale',
                                    style: mediumFont.copyWith(
                                        color: selectedTransaction == 1
                                            ? Colors.black
                                            : "6C6C6C".toColor(),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedTransaction = 2;
                              });
                            },
                            child: Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width / 2 - 26,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(8),
                                      bottomRight: Radius.circular(8)),
                                  color: selectedTransaction == 2
                                      ? mainColor
                                      : "#E5E5E5".toColor()),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Purchase",
                                    style: mediumFont.copyWith(
                                        color: selectedTransaction == 2
                                            ? Colors.black
                                            : "6C6C6C".toColor(),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
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
                            children: selectedTransaction == 1
                                ? saleTransaction
                                    .map((e) => TransactionItem(e))
                                    .toList()
                                : purchaseTransaction
                                    .map((e) => TransactionItem(e))
                                    .toList()),
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
                    GestureDetector(
                      onTap: () {
                        Get.to(ProductPage());
                      },
                      child: SizedBox(
                        height: 35,
                        width: 35,
                        child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/product.png')),
                      ),
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
