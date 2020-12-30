part of 'widgets.dart';

class TransactionCategories extends StatelessWidget {
  final Categories categories;
  final int selectedIndex;

  TransactionCategories(this.categories, this.selectedIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  image: AssetImage('assets/' + categories.picture),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            categories.name,
            style: greyFont.copyWith(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
