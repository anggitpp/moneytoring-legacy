part of 'widgets.dart';

class TransactionCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 70,
          child: Column(
            children: [
              Container(
                width: 60,
                height: 60,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/icon-aquarium.png'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Aquarium Kaca',
                style: greyFont.copyWith(fontSize: 10),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: 70,
          child: Column(
            children: [
              Container(
                width: 60,
                height: 60,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: greyColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/icon-bulb.png'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Smart Device',
                style: greyFont.copyWith(fontSize: 10),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          width: 70,
          child: Column(
            children: [
              Container(
                width: 60,
                height: 60,
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
    );
  }
}
