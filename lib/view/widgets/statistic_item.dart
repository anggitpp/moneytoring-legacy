part of 'widgets.dart';

class StatisticItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/aquarium.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Aquarium XL',
                        style: mediumFont.copyWith(
                            fontWeight: FontWeight.w600, fontSize: 17),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        '50 Product Sold',
                        style: greyFont.copyWith(fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                '590.000',
                style: mediumFont.copyWith(
                    fontWeight: FontWeight.w600, fontSize: 17),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width:
                    MediaQuery.of(context).size.width - 60 - 2 * defaultMargin,
                decoration: BoxDecoration(
                  border: Border.all(color: greyColor, width: 0.5),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
