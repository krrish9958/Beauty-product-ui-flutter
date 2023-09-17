import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Hello, Madam',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_none_outlined),
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Find Your beauty products',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[300],
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "search",
                              // contentPadding: EdgeInsets.only(left: 20),
                              prefixIcon: Icon(Icons.search)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 50,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Colors.amber[700],
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(
                        Icons.filter_alt,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 150,
                        child: Text(
                          "New product for your skin",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 19),
                        ),
                      ),
                      Container(
                        height: 45,
                        width: 120,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Shop Now'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amber[800],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.amber[800]),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // listview :
              // scroll direction = horizontal
              // children : [
              // text1,
              //text2 ........
              //]

              SizedBox(
                // humne yha sized box use kiya cuz list view me possibility hoti hai infinite scroll hone ki and we have limited space on the screen so we have to specify a fixed size or height for the listview.
                height: 50,
                child: ListView(
                  shrinkWrap: true, // don't know it just remove error if comes
                  scrollDirection:
                      Axis.horizontal, // horizontally scroll hogi list
                  children: [
                    //yaha humne listview ke children me ek list pass ki hai jisme humne categoryitems ka widget banaya hai
                    CategoryItems(
                      category: 'All',
                      isSelected: true,
                    ),
                    CategoryItems(
                      category: 'Face',
                      isSelected: false,
                    ),
                    CategoryItems(
                      category: 'Body',
                      isSelected: false,
                    ),
                    CategoryItems(
                      category: 'Hair',
                      isSelected: false,
                    ),
                    CategoryItems(
                      category: 'Ear',
                      isSelected: false,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "BestSellers",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.amber[800]),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    BestSellerItems(
                      productName: "Face Set",
                      productPrice: "Rs200",
                    ),
                    BestSellerItems(
                      productName: "Body Set",
                      productPrice: "Rs400",
                    ),
                    BestSellerItems(
                      productName: "Hair Set",
                      productPrice: "Rs600",
                    ),
                    BestSellerItems(
                      productName: "Skin Set",
                      productPrice: "Rs800",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// isSelected ? black : white

class CategoryItems extends StatelessWidget {
  final String category;
  final bool isSelected;
  const CategoryItems(
      {super.key, required this.category, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //  if(isSelected == false){
        //     isSelected = true;
        //  }
      },
      child: Container(
        margin: EdgeInsets.only(right: 8),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: isSelected ? Colors.black : Colors.grey[300],
        ),
        child: Center(
            child: Text(
          category,
          style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontWeight: FontWeight.w500),
        )),
      ),
    );
  }
}

class BestSellerItems extends StatefulWidget {
  final String productName;
  final String productPrice;

  const BestSellerItems(
      {super.key, required this.productName, required this.productPrice});

  @override
  State<BestSellerItems> createState() => _BestSellerItemsState();
}

class _BestSellerItemsState extends State<BestSellerItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      height: 100,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey[600],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.productName,
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        widget.productPrice,
                        style: TextStyle(fontWeight: FontWeight.w900),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
