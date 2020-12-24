part of 'pages.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: backColor,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: backColor,
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(
                      horizontal: defaultMargin, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(),
                      Text(
                        'Product',
                        style: largeFont.copyWith(fontWeight: FontWeight.w600),
                      ),
                      Icon(Icons.sort),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: "#8F8F8F".toColor(),
                      ),
                      hintText: 'Search here..',
                      hintStyle: TextStyle(color: "#8F8F8F".toColor()),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: "#8F8F8F".toColor()),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: "#8F8F8F".toColor()),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: MediaQuery.of(context).size.height - 180,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Container(
                        height: 1,
                        margin: EdgeInsets.only(top: 15),
                        width: double.infinity,
                        color: greyColor,
                      ),
                      Column(
                        children:
                            mockProducts.map((e) => ProductItem(e)).toList(),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 4, spreadRadius: 1, color: Colors.black26)
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(MainPage());
                      },
                      child: Icon(
                        Icons.home,
                        size: 35,
                      ),
                    ),
                    SizedBox(
                      height: 35,
                      width: 35,
                      child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/product-selected.png')),
                    ),
                    Icon(
                      Icons.pie_chart,
                      size: 35,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
