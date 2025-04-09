import 'package:flutter/material.dart';

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
          BrandSection()
        ],
      ),
    ));
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
            padding:
                EdgeInsets.only(left: 5, top: 5, bottom: 5, right: 25),
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
