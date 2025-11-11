import 'package:bookly_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(bottom: height * 0.02),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: width * 0.05),
            width: width * 0.2,
            height: height * 0.16,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                    image: AssetImage(AppAssets.test2), fit: BoxFit.fill)),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                maxLines: 2,
                "Harry Potter \nand the Goblet of Fire",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "J.K. Rowling",
                style: TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 151, 159, 163)),
              ),
              Row(
                children: [
                  Text(
                    "19.99\$",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 237, 201, 95),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "4.8",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "(2350)",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 151, 159, 163)),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
