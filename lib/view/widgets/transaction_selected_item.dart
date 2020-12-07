part of 'widgets.dart';

class TransactionSelectedItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 50,
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
                        style: largeFont,
                      ),
                      Text(
                        '50.000',
                        style: greyFont.copyWith(fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: 40,
                height: 30,
                child: TextField(
                  maxLength: 3,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    // contentPadding: EdgeInsets.only(bottom: -10),
                    counterText: '',
                    hintText: '0',
                    hintStyle: greyFont.copyWith(fontSize: 15),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
