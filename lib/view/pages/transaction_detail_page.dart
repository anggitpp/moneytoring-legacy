part of 'pages.dart';

class TransactionDetailPage extends StatelessWidget {
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
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back,
                        size: 24,
                      ),
                      Text('Transaction Details', style: largeFont),
                      SizedBox(
                        width: 14,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Transaction Item',
                  style: mediumFont,
                ),
                SizedBox(
                  height: 15,
                ),
                TransactionDetailItem(),
                SizedBox(
                  height: 10,
                ),
                TransactionDetailItem(),
                SizedBox(
                  height: 10,
                ),
                TransactionDetailItem(),
                SizedBox(height: 30),
                Text('Order Information', style: mediumFont),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Product',
                      style: greyFont.copyWith(fontSize: 15),
                    ),
                    Text(
                      NumberFormat.currency(
                              locale: 'id-ID', decimalDigits: 0, symbol: 'IDR ')
                          .format(450000),
                      style: mediumFont,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Date',
                      style: greyFont.copyWith(fontSize: 15),
                    ),
                    Text(
                      'Wed, 2/12/2020',
                      style: mediumFont,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delivery Fee',
                      style: greyFont.copyWith(fontSize: 15),
                    ),
                    Text(
                      NumberFormat.currency(
                              locale: 'id-ID', decimalDigits: 0, symbol: 'IDR ')
                          .format(100000),
                      style: mediumFont,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Fee',
                      style: greyFont.copyWith(fontSize: 15),
                    ),
                    Text(
                      NumberFormat.currency(
                              locale: 'id-ID', decimalDigits: 0, symbol: 'IDR ')
                          .format(100),
                      style: mediumFont,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: greyFont.copyWith(fontSize: 15),
                    ),
                    Text(
                      NumberFormat.currency(
                              locale: 'id-ID', decimalDigits: 0, symbol: 'IDR ')
                          .format(450000),
                      style: mediumFont,
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: RaisedButton(
                    elevation: 0,
                    onPressed: () {},
                    color: mainColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'Save Transaction',
                      style: mediumFont,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
