import 'package:flutter/material.dart';
import '../model/media_model.dart';
import '../model/seller_menu_model.dart';

class SellerAccScreen extends StatefulWidget {
  final MediaModel profileIndex;
  SellerAccScreen({this.profileIndex});
  @override
  _SellerAccScreenState createState() => _SellerAccScreenState();
}

class _SellerAccScreenState extends State<SellerAccScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // This CONTAINER HOLE PART 1 ===============

            SliverToBoxAdapter(
              child: Container(
                height: 420,
                child: Column(
                  children: [
                    Container(
                        height: 420,
                        color: Colors.orange,
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                //====== CONTAIN COLUMN OF COVER IMAGE AND SELLER NAME===
                                Container(
                                  height: 350,
                                  color: Colors.white,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.only(right: 30),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                bottomRight:
                                                    Radius.circular(310),
                                                topRight: Radius.circular(0.5),
                                              ),
                                              image: DecorationImage(
                                                  image: AssetImage(widget
                                                      .profileIndex
                                                      .product_image),
                                                  fit: BoxFit.cover)),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                bottom: 30,
                                                child: Container(
                                                  padding: EdgeInsets.only(
                                                      top: 20, left: 10),
                                                  height: 70,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        widget.profileIndex
                                                            .seller_name,
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 19,
                                                            letterSpacing: 0.2,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      Text(
                                                        'Eat today, Pay tommorow',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 10,
                                                            letterSpacing: 0.3),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                //========= BASIC INFO OF SELLER ============
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 20, left: 5, right: 150),
                                  height: 70,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black,
                                          offset: Offset(0.6, 0.3),
                                          blurRadius: 8,
                                          spreadRadius: -2,
                                        ),
                                      ]),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        children: [
                                          Expanded(
                                            child: Text('Star rate:'),
                                          ),
                                          Expanded(
                                            child: Text('...'),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Expanded(
                                            child: Text('Eat rank'),
                                          ),
                                          Expanded(
                                            child: Text('...'),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Expanded(
                                            child: Text('Follower'),
                                          ),
                                          Expanded(
                                            child: Text('...'),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            //=== THIS CIRCLE AVATAR CONTAIN PROFILE IMAGE ====
                            Positioned(
                              bottom: 40,
                              right: 7,
                              child: CircleAvatar(
                                radius: 100,
                                backgroundColor: Colors.grey[100],
                                child: CircleAvatar(
                                  radius: 93,
                                  backgroundImage: AssetImage(
                                      widget.profileIndex.seller_profile),
                                ),
                              ),
                            ),
                            //====This PADDING CONTAIN ARRO BACK AND CART ICON===========
                            Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Icon(
                                        Icons.arrow_back,
                                        color: Colors.white,
                                      )),
                                  CircleAvatar(
                                    backgroundColor: Colors.white60,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Icon(Icons.shopping_bag),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 50,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Menu'),
                        SizedBox(
                          height: 5,
                        ),
                        Container(height: 3, width: 50, color: Colors.orange),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Review'),
                        SizedBox(
                          height: 5,
                        ),
                        Container(height: 3, width: 50, color: Colors.orange),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Photos'),
                        SizedBox(
                          height: 5,
                        ),
                        Container(height: 3, width: 50, color: Colors.orange),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('About'),
                        SizedBox(
                          height: 5,
                        ),
                        Container(height: 3, width: 50, color: Colors.orange),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.only(top: 20, left: 15),
                //color: Colors.blue,
                child: Text('Recommended',
                    style:
                        TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                MenuModel menuIndex = menuList[index];
                return Container(
                  margin: EdgeInsets.only(top: 10, left: 5, right: 5),
                  height: 160,
                  decoration: BoxDecoration(
                      //color: Colors.white,

                      ),
                  // color: Colors.pink,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
                        width: 170,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            image: DecorationImage(
                              image: AssetImage(menuIndex.foodImage),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                          child: Container(
                            // color: Colors.green,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  menuIndex.foodName,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  menuIndex.menuDetail,
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  menuIndex.foodPrice,
                                  style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(80, 0, 10, 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(
                                          height: 30,
                                          width: 30,
                                          child: TextButton(
                                            onPressed: () {},
                                            child: Center(
                                              child: Text(
                                                '+',
                                                style: TextStyle(fontSize: 12),
                                              ),
                                            ),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Colors.blue,
                                            ),
                                          )),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.all(6),
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.blue),
                                          ),
                                          child: Center(child: Text('Set')),
                                        ),
                                      ),
                                      SizedBox(
                                          height: 30,
                                          width: 30,
                                          child: TextButton(
                                            onPressed: () {},
                                            child: Center(child: Text('-')),
                                            style: TextButton.styleFrom(
                                              backgroundColor: Colors.blue,
                                            ),
                                          )),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(80, 5, 10, 0),
                                  padding: EdgeInsets.fromLTRB(10, 6, 10, 6),
                                  color: Colors.orange,
                                  child: Center(
                                    child: Text('Add to cart'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }, childCount: 3),
            )
          ],
        ),
      ),
    );
  }
}

/*Expanded(
                child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  width: 200,
                  height: 200,
                  color: Colors.red,
                );
              },
            )),*/
/*ListView.builder(
                itemCount: 2,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 300,
                    color: Colors.orange,
                    child: Center(
                      child: Text("$index"),
                    ),
                  );
                },
              ),*/

/*Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.arrow_back)),
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                        )
                      ],
                    ),
                  ),*/
/*  */

/* Container(height: 70, color: Colors.orange),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Recommended',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),*/
