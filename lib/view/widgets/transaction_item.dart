part of 'widgets.dart';

class TransactionItem extends StatelessWidget {
  final Transactions transactions;

  TransactionItem(this.transactions);
  @override
  Widget build(BuildContext context) {
    final DateFormat formatter = DateFormat('E, dd MMMM yyyy  ');
    final String formatted = formatter.format(transactions.date);

    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/' + transactions.products.picture),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 60,
              padding: EdgeInsets.only(top: 7),
              width: MediaQuery.of(context).size.width - 2 * defaultMargin - 60,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: greyColor),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width -
                            2 * defaultMargin -
                            150,
                        child: Text(
                          transactions.products.name,
                          overflow: TextOverflow.clip,
                          maxLines: 1,
                          style: mediumFont,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        formatted,
                        style: greyFont,
                      )
                    ],
                  ),
                  Text(
                    NumberFormat.currency(
                            locale: 'id-ID', decimalDigits: 0, symbol: '')
                        .format(transactions.margin),
                    style: mediumFont.copyWith(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
