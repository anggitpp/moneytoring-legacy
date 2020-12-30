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
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: defaultMargin,
                ),
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
                height: 15,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                height: 90,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: mockCategories
                        .map((e) => TransactionCategories(e, 1))
                        .toList()),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: greyColor,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 160,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: ListView(
                  children: [
                    Wrap(
                      spacing: 9,
                      runSpacing: 5,
                      children: [
                        ...mockProducts
                            .asMap()
                            .map(
                              (index, value) => MapEntry(
                                index,
                                SelectableTransactionItem(value),
                              ),
                            )
                            .values
                            .toList(),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Text(
                  'Transaction Item',
                  style: mediumFont,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 1,
                color: greyColor,
                width: double.infinity,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(
                    horizontal: defaultMargin, vertical: 15),
                child: Column(
                  children: [
                    TransactionSelectedItem(),
                    SizedBox(
                      height: 10,
                    ),
                    TransactionSelectedItem(),
                    SizedBox(
                      height: 10,
                    ),
                    TransactionSelectedItem(),
                  ],
                ),
              ),
              SizedBox(height: 10),
              FloatingActionButton(
                onPressed: () {},
                elevation: 0,
                backgroundColor: mainColor,
                child: Icon(Icons.arrow_forward),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
