import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nike_shoe_store/model/product_model.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  String value = '1';
  @override
  Widget build(BuildContext context) {
    const String desc =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Egestas purus viverra accumsan in nisl nisi. Arcu cursus vitae congue mauris rhoncus aenean vel elit scelerisque. ';

    return Scaffold(
        backgroundColor: Color(0xffF5F6FF),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Detail Screen',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          backgroundColor: Color(0xffF5F6FF),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_outline,
                color: Colors.red,
              ),
              style: IconButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Text(
                      'Jordan',
                      style: TextStyle(
                          fontSize: 78,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade100,
                          letterSpacing: 20),
                    ),
                    Transform.rotate(
                      angle: pi / -6,
                      child: Image.asset(
                        widget.product.image,
                        width: MediaQuery.of(context).size.width * 0.9,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
              Text(
                widget.product.name,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                desc,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                'Size',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              sizeSection(value: value),
            ],
          ),
        ));
  }
}

class sizeSection extends StatefulWidget {
  sizeSection({super.key, required this.value});

  String value;

  @override
  State<sizeSection> createState() => _sizeSectionState();
}

class _sizeSectionState extends State<sizeSection> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 10,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                widget.value = '1';
              });
            },
            child: sizeItem(
              sizeNumber: '1',
              value: widget.value,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                widget.value = '2';
              });
            },
            child: sizeItem(
              sizeNumber: '2',
              value: widget.value,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                widget.value = '3';
              });
            },
            child: sizeItem(
              sizeNumber: '3',
              value: widget.value,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                widget.value = '4';
              });
            },
            child: sizeItem(
              sizeNumber: '4',
              value: widget.value,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                widget.value = '5';
              });
            },
            child: sizeItem(
              sizeNumber: '5',
              value: widget.value,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                widget.value = '6';
              });
            },
            child: sizeItem(
              sizeNumber: '6',
              value: widget.value,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                widget.value = '7';
              });
            },
            child: sizeItem(
              sizeNumber: '7',
              value: widget.value,
            ),
          ),
        ],
      ),
    );
  }
}

class sizeItem extends StatelessWidget {
  const sizeItem({
    super.key,
    required this.sizeNumber,
    required this.value,
  });

  final String sizeNumber;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: value == sizeNumber ? Colors.blue : Colors.blue.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        sizeNumber,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: value == sizeNumber ? Colors.white : Colors.blue,
        ),
      ),
    );
  }
}
