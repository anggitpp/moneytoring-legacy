part of 'widgets.dart';

class MainHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 20),
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
                  width: MediaQuery.of(context).size.width / 2 - 26 - 10,
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
                                fontWeight: FontWeight.bold, fontSize: 18),
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
                  width: MediaQuery.of(context).size.width / 2 - 26 - 10,
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
                                fontWeight: FontWeight.bold, fontSize: 18),
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
    );
  }
}
