part of 'widgets.dart';

class TransactionItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/aquarium.jpg'),
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
                  Text(
                    'Aquarium XL',
                    style: mediumFont,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '25 November 02:21 PM',
                    style: greyFont,
                  )
                ],
              ),
              Text(
                '50.000',
                style: mediumFont.copyWith(fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ],
    );
  }
}
