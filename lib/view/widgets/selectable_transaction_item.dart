part of 'widgets.dart';

class SelectableTransactionItem extends StatelessWidget {
  final Products products;

  SelectableTransactionItem(this.products);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: 95,
            height: 95,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image: AssetImage('assets/' + products.picture),
                  fit: BoxFit.cover),
            ),
          ),
          Text(products.name, maxLines: 1, style: greyFont),
          Container(
            margin: EdgeInsets.only(left: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Stock:',
                  style: greyFont.copyWith(fontSize: 10),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  products.stock.toString(),
                  style: greyFont.copyWith(color: "#0C8B20".toColor()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
