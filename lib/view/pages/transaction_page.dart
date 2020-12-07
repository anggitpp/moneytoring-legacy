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
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: defaultMargin, vertical: 20),
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
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    TransactionCategories(),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('assets/aquarium.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Text('Aquarium M', style: greyFont),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Stock:',
                              style: greyFont.copyWith(fontSize: 10),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              '10',
                              style:
                                  greyFont.copyWith(color: "#0C8B20".toColor()),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('assets/aquarium.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Text('Aquarium M', style: greyFont),
                        Row(
                          children: [
                            Text(
                              'Stock:',
                              style: greyFont.copyWith(fontSize: 10),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              '10',
                              style:
                                  greyFont.copyWith(color: "#0C8B20".toColor()),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('assets/aquarium.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Text('Aquarium M', style: greyFont),
                        Row(
                          children: [
                            Text(
                              'Stock:',
                              style: greyFont.copyWith(fontSize: 10),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              '10',
                              style:
                                  greyFont.copyWith(color: "#0C8B20".toColor()),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage('assets/aquarium.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Text('Aquarium M', style: greyFont),
                        Row(
                          children: [
                            Text(
                              'Stock:',
                              style: greyFont.copyWith(fontSize: 10),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              '10',
                              style:
                                  greyFont.copyWith(color: "#0C8B20".toColor()),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Column(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: AssetImage('assets/aquarium.jpg'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Text('Aquarium M', style: greyFont),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Stock:',
                                style: greyFont.copyWith(fontSize: 10),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                '10',
                                style: greyFont.copyWith(
                                    color: "#0C8B20".toColor()),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Column(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: AssetImage('assets/aquarium.jpg'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Text('Aquarium M', style: greyFont),
                          Row(
                            children: [
                              Text(
                                'Stock:',
                                style: greyFont.copyWith(fontSize: 10),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                '10',
                                style: greyFont.copyWith(
                                    color: "#0C8B20".toColor()),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 70,
                      child: Column(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: greyColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/icon-add.png'),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Add Category',
                            style: greyFont.copyWith(fontSize: 10),
                          ),
                        ],
                      ),
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
