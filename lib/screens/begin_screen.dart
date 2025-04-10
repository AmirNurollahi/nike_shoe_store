import 'package:flutter/material.dart';
import 'package:nike_shoe_store/model/product_model.dart';

class BeginScreen extends StatelessWidget {
  const BeginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffF5F6FF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 15,
        children: [
          TopIconSection(),
          SearchBarSection(),
          BrandSection(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular Shoes',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              Text(
                'View all',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 275,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: productList.length,
              itemBuilder: (context, index) {
                return popularShoesItem(
                  index: index,
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}

class popularShoesItem extends StatelessWidget {
  const popularShoesItem({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.only(top: 10, bottom: 10),
      // width: double.maxFinite,
      width: MediaQuery.of(context).size.width,
      // height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: productList[index].bgColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset(
              productList[index].image,
              width: MediaQuery.of(context).size.width * 0.9,
              height: 155,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  spacing: 5,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productList[index].name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Rewiew',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          productList[index].rating,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                      ],
                    ),
                    Text(
                      productList[index].price,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Color(0XFF2D96FF),
                    ),
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BrandSection extends StatelessWidget {
  const BrandSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 15,
        children: [
          Container(
            padding: EdgeInsets.only(left: 5, top: 5, bottom: 5, right: 25),
            decoration: BoxDecoration(
              color: Color(0xFF2D96Ff),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Row(
              spacing: 10,
              children: [
                LogoImageWidget(imageName: 'simple-icons_nike'),
                Text(
                  'Nike',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          LogoImageWidget(
            imageName: 'simple-icons_puma',
          ),
          LogoImageWidget(
            imageName: 'simple-icons_jordan',
          ),
          LogoImageWidget(
            imageName: 'gg_adidas',
          ),
        ],
      ),
    );
  }
}

class LogoImageWidget extends StatelessWidget {
  const LogoImageWidget({
    super.key,
    required this.imageName,
  });
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image.asset(
        'assets/images/$imageName.png',
        width: 50,
        height: 50,
      ),
    );
  }
}

class SearchBarSection extends StatelessWidget {
  const SearchBarSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.78,
          height: 60,
          padding: EdgeInsets.only(left: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            spacing: 10,
            children: [
              Icon(
                Icons.search,
                color: Colors.grey,
                size: 28,
              ),
              Text(
                'Search...',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Card(
          color: Colors.black,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Icon(
              Icons.tune,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class TopIconSection extends StatelessWidget {
  const TopIconSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset(
              'assets/images/hugeicons_menu-circle.png',
              width: 24,
            ),
          ),
        ),
        Card(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Icon(Icons.shopping_basket_outlined),
          ),
        ),
      ],
    );
  }
}
// Container(
//             margin: EdgeInsets.symmetric(horizontal: 15),
//             padding: EdgeInsets.only(top: 20, bottom: 20),
//             width: double.maxFinite,
//             // height: 200,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(15),
//               color: Colors.white,
//             ),
//             child: Column(
//               children: [
//                 Container(
//                   width: MediaQuery.of(context).size.width * 0.8,
//                   decoration: BoxDecoration(
//                     color: Color(0xFFE7F4FF),
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Image.asset(
//                     'assets/images/blue1.png',
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 30),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         spacing: 5,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Air Jordan',
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 16,
//                             ),
//                           ),
//                           Row(
//                             children: [
//                               Text(
//                                 'Rewiew',
//                                 style: TextStyle(
//                                   fontSize: 14,
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Text(
//                                 '4.5',
//                                 style: TextStyle(
//                                   fontSize: 14,
//                                   color: Colors.orange,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               Icon(
//                                 Icons.star,
//                                 color: Colors.orange,
//                               ),
//                             ],
//                           ),
//                           Text(
//                             '\$89.75',
//                             style: TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ],
//                       ),
//                       IconButton(
//                           style: IconButton.styleFrom(
//                             backgroundColor: Color(0XFF2D96FF),
//                           ),
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.add,
//                             color: Colors.white,
//                           ))
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
