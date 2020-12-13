part of 'widgets.dart';

class StatisticHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: mainColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Today',
                style: smallFont.copyWith(fontWeight: FontWeight.w600),
              ),
              Icon(Icons.arrow_drop_down, size: 18)
            ],
          ),
          Text(
            NumberFormat.currency(
                    locale: 'id-ID', decimalDigits: 0, symbol: 'Rp. ')
                .format(5000000),
            style:
                largeFont.copyWith(fontSize: 25, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: backColor,
                ),
                height: 60,
                width: MediaQuery.of(context).size.width / 2 -
                    (2 * defaultMargin) +
                    5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        'Purchase',
                        style: greyFont.copyWith(fontSize: 17),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Rp. ',
                          style: greyFont.copyWith(fontSize: 17),
                        ),
                        Text(
                            NumberFormat.currency(
                                    locale: 'id-ID',
                                    symbol: '',
                                    decimalDigits: 0)
                                .format(7000000),
                            style: mediumFont.copyWith(
                                fontWeight: FontWeight.bold, fontSize: 17)),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: backColor,
                ),
                height: 60,
                width: MediaQuery.of(context).size.width / 2 -
                    (2 * defaultMargin) +
                    5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        'Purchase',
                        style: greyFont.copyWith(fontSize: 17),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Rp. ',
                          style: greyFont.copyWith(fontSize: 17),
                        ),
                        Text(
                            NumberFormat.currency(
                                    locale: 'id-ID',
                                    symbol: '',
                                    decimalDigits: 0)
                                .format(7000000),
                            style: mediumFont.copyWith(
                                fontWeight: FontWeight.bold, fontSize: 17)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
