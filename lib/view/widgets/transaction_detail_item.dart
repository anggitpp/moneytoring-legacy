part of 'widgets.dart';

class TransactionDetailItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
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
                children: [
                  Text(
                    'Aquarium M',
                    style: mediumFont,
                  ),
                  Text(
                    '50.000',
                    style: greyFont.copyWith(fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
          Text('3 Items', style: mediumFont),
        ],
      ),
    );
  }
}
