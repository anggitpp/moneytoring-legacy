part of 'widgets.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 100,
          margin: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 10),
          child: Row(
            children: [
              Container(
                width: 85,
                height: 85,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/bulb.jpg'),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        spreadRadius: 1,
                        color: Colors.black26,
                        offset: Offset(0, 2),
                      ),
                    ]),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8),
                width: MediaQuery.of(context).size.width -
                    10 -
                    85 -
                    2 * defaultMargin,
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Bardi Smart Bulb 9W With RGB 16 Million Color',
                          style:
                              smallFont.copyWith(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Rp. 99.900',
                          style: smallFont,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Stock: 10',
                              style: smallFont,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          color: mainColor,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Edit Product',
                              style: smallFont.copyWith(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 1,
          color: greyColor,
        )
      ],
    );
  }
}
