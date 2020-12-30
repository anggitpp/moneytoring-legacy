part of 'pages.dart';

class AddProductPage extends StatefulWidget {
  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController buyingController = TextEditingController();
  TextEditingController sellingController = TextEditingController();
  TextEditingController stockController = TextEditingController();

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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(
                    horizontal: defaultMargin, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back),
                    Text(
                      'Product',
                      style: largeFont.copyWith(fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 15,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 110,
                height: 110,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/photo_border.png'),
                      fit: BoxFit.cover),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/photo.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Product Name',
                      style: mediumFont.copyWith(fontSize: 17),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 50,
                      child: TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 10, left: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: mainColor),
                          ),
                          hintText: 'Type your product name',
                          hintStyle: greyFont.copyWith(
                              fontSize: 14, color: "#8F8F8F".toColor()),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Buying Price',
                      style: mediumFont.copyWith(fontSize: 17),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 50,
                      child: TextField(
                        controller: buyingController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 10, left: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: mainColor),
                          ),
                          hintText: 'Type your buying price',
                          hintStyle: greyFont.copyWith(
                              fontSize: 14, color: "#8F8F8F".toColor()),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Selling Price',
                      style: mediumFont.copyWith(fontSize: 17),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 50,
                      child: TextField(
                        controller: sellingController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 10, left: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: mainColor),
                          ),
                          hintText: 'Type your selling price',
                          hintStyle: greyFont.copyWith(
                              fontSize: 14, color: "#8F8F8F".toColor()),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Stock',
                      style: mediumFont.copyWith(fontSize: 17),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 50,
                      child: TextField(
                        controller: stockController,
                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        decoration: InputDecoration(
                          counterText: "",
                          contentPadding: EdgeInsets.only(top: 10, left: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: mainColor),
                          ),
                          hintText: 'Type your stock',
                          hintStyle: greyFont.copyWith(
                              fontSize: 14, color: "#8F8F8F".toColor()),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: RaisedButton(
                  onPressed: () {},
                  color: mainColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Save Product',
                    style: mediumFont.copyWith(
                        fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
